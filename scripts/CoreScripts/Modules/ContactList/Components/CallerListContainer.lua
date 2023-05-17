--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local NetworkingCall = dependencies.NetworkingCall
local RoduxCall = dependencies.RoduxCall
local UIBlox = dependencies.UIBlox
local dependencyArray = dependencies.Hooks.dependencyArray
local useDispatch = dependencies.Hooks.useDispatch
local useSelector = dependencies.Hooks.useSelector

local useStyle = UIBlox.Core.Style.useStyle

local Components = script.Parent
local CallerListItem = require(Components.CallerListItem)
local OpenCallDetails = require(Components.Parent.Actions.OpenCallDetails)

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
local localUserId: number = localPlayer and localPlayer.UserId or 0

export type Props = {}

local function CallerListContainer(props: Props)
	local style = useStyle()
	local dispatch = useDispatch()
	local theme = style.Theme

	React.useEffect(function()
		dispatch(NetworkingCall.GetCallHistory.API({ limit = 4 }))

		return function()
			dispatch(RoduxCall.Actions.ClearCallRecords())
		end
	end, {})

	local selectCallHistoryResponse = React.useCallback(function(state: any)
		return state.Call.callHistory or {}
	end)

	local callHistoryResponse = useSelector(selectCallHistoryResponse)
	local callHistoryState, setCallHistoryState = React.useState({ callRecords = {}, nextPageCursor = "" })
	local lastUsedCursor = React.useRef("")

	local function concatArray(a, b)
		local result = { table.unpack(a) }
		table.move(b, 1, #b, #result + 1, result)
		return result
	end

	React.useEffect(function()
		setCallHistoryState(function(prevState)
			local newState = { callRecords = {}, nextPageCursor = "" }
			newState.nextPageCursor = callHistoryResponse.nextPageCursor
			newState.callRecords = if callHistoryResponse.callRecords ~= nil
				then concatArray(prevState.callRecords, callHistoryResponse.callRecords)
				else {}
			return newState
		end)
	end, { callHistoryResponse })

	local children: any = React.useMemo(function()
		local entries = {}
		entries["UIListLayout"] = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
		})

		for index, caller in ipairs(callHistoryState.callRecords) do
			entries[index] = React.createElement(CallerListItem, {
				caller = caller,
				showDivider = index ~= #callHistoryState.callRecords,
				localUserId = localUserId,
				OpenCallDetails = function()
					dispatch(OpenCallDetails(caller.participants))
				end,
			})
		end
		return entries
	end, dependencyArray(callHistoryState.callRecords))

	return React.createElement("ScrollingFrame", {
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
		Size = UDim2.fromScale(0.5, 0.5),
		AutomaticCanvasSize = Enum.AutomaticSize.Y,
		CanvasSize = UDim2.new(),
		BackgroundColor3 = theme.BackgroundDefault.Color,
		BackgroundTransparency = theme.BackgroundDefault.Transparency,
		[React.Change.CanvasPosition] = function(f)
			if
				f.CanvasPosition.Y >= f.AbsoluteCanvasSize.Y :: number - f.AbsoluteSize.Y :: number - 50
				and callHistoryState.nextPageCursor ~= ""
				and callHistoryState.nextPageCursor ~= lastUsedCursor.current
			then
				lastUsedCursor.current = callHistoryState.nextPageCursor
				dispatch(NetworkingCall.GetCallHistory.API({ limit = 30, cursor = callHistoryState.nextPageCursor }))
			end
		end,
	}, children)
end

return CallerListContainer
