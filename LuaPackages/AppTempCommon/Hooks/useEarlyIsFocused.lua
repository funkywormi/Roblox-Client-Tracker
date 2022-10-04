--[[
	A hook used for listenening to RN screen focused event.

	Fires early in the case of transitions (at time of transition start).
]]

local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local RoactNavigation = require(CorePackages.RoactNavigation)

local useNavigation = require(script.Parent.useNavigation)

local function useEarlyIsFocused()
	local navigation = useNavigation()

	local isFocused, setIsFocused = React.useState(navigation.isFocused())

	React.useEffect(function()
		-- Listen for WillFocus event so we can respond early during transitions
		local willFocusListener = navigation.addListener(RoactNavigation.Events.WillFocus, function()
			setIsFocused(true)
		end)

		local willBlurListener = navigation.addListener(RoactNavigation.Events.WillBlur, function()
			setIsFocused(false)
		end)

		return function()
			willFocusListener.remove()
			willBlurListener.remove()
		end
	end, {})

	return isFocused
end

return useEarlyIsFocused
