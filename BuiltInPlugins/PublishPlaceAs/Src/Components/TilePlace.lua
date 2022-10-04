local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)

local SharedFlags = Framework.SharedFlags
local FFlagDevFrameworkMigrateTextLabels = SharedFlags.getFFlagDevFrameworkMigrateTextLabels()

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local Separator = UI.Separator
local TextLabel = UI.Decoration.TextLabel

local ContentProvider = game:GetService("ContentProvider")

local ASSET_SIZE = 150

local TilePlace = Roact.PureComponent:extend("TilePlace")

function TilePlace:init()
	self.state = {
		assetFetchStatus = nil,
	}

	self.isMounted = false

	if self.props.Id then
		self.thumbnailUrl = string.format("rbxthumb://type=AutoGeneratedAsset&id=%i&w=%i&h=%i", self.props.Id, ASSET_SIZE, ASSET_SIZE)
	end
end

function TilePlace:didMount()
	self.isMounted = true
	if self.props.Id then
		spawn(function()
			local asset = { self.thumbnailUrl }
			local function setStatus(contentId, status)
				if self.isMounted then
					self:setState({
						assetFetchStatus = status
					})
				end
			end
			ContentProvider:PreloadAsync(asset, setStatus)
		end)
	end
end

function TilePlace:willUnmount()
	self.isMounted = false
end

function TilePlace:render()
	local props = self.props
	local theme = props.Stylizer

	local name = props.Name
	local selected = props.Selected
	local lastItem = props.LastItem
	local onActivated = props.OnActivated
	local layoutOrder = props.LayoutOrder or 0

	local image = theme.icons.thumbnailPlaceHolder
	local isThumbnail = false
	if props.Id and self.state.assetFetchStatus == Enum.AssetFetchStatus.Success then
		isThumbnail = true
		image = self.thumbnailUrl
	elseif props.Id == nil then
		image = theme.icons.newPlace
	end

	return Roact.createElement("ImageButton", {
		Size = UDim2.new(1, -40, 0, 80),
		LayoutOrder = layoutOrder,
		BackgroundTransparency = 1,
		[Roact.Event.Activated] = onActivated,
	}, {

		Icon = Roact.createElement("ImageLabel", {
			Position = UDim2.new(0, 10, 0, 10),
			Size = UDim2.new(0, 60, 0, 60),
			Image = image,
			ImageColor3 = isThumbnail and Color3.new(1, 1, 1) or theme.icons.imageColor,
			BackgroundColor3 = theme.icons.backgroundColor,
			BorderSizePixel = 0,
		}),

		Tile = Roact.createElement("Frame", {
			Position = UDim2.new(0, 80, 0, 0),
			Size = UDim2.new(1, -80, 1, 0),
			BackgroundTransparency = 1,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft =  UDim.new(0, 10),
				PaddingRight =  UDim.new(0, 10),
				PaddingBottom = UDim.new(0, 10),
			}),

			Name = if FFlagDevFrameworkMigrateTextLabels then (
				Roact.createElement(TextLabel, {
					Text = name,
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Left,
				})
			) else (
				Roact.createElement("TextLabel", {
					Text = name,
					Size = UDim2.new(1, 0, 1, 0),
					TextXAlignment = 0,

					TextWrapped = true,
					TextSize = 11,
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					TextColor3 = theme.textColor,
				})
			),

			Selected = selected and Roact.createElement("ImageLabel", {
				Image = theme.icons.checkmark,
				Size = UDim2.new(0, 30, 0, 30),
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, -30, 0.5, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
			}),

			Separator = not lastItem and Roact.createElement(Separator, {
				Position = UDim2.new(0.5, 0, 1, 10),
			}),
		}),
	})
end

TilePlace = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(TilePlace)

return TilePlace
