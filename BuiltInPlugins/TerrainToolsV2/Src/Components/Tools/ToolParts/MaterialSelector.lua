local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local TextService = game:GetService("TextService")

local UILibrary = Plugin.Packages.UILibrary
local Localizing = require(UILibrary.Localizing)
local withLocalization = Localizing.withLocalization
local Theme = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theme.withTheme

local TexturePath = "rbxasset://textures/TerrainTools/"

local TerrainInterface = require(Plugin.Src.ContextServices.TerrainInterface)

local MaterialDetails = require(Plugin.Src.Util.MaterialDetails)

local materialsOrder = {
	Enum.Material.Grass,      Enum.Material.Sand,        Enum.Material.Rock,      Enum.Material.Water,
	Enum.Material.Ground,     Enum.Material.Sandstone,   Enum.Material.Slate,     Enum.Material.Snow,
	Enum.Material.Mud,        Enum.Material.Brick,       Enum.Material.Concrete,  Enum.Material.Glacier,
	Enum.Material.WoodPlanks, Enum.Material.CrackedLava, Enum.Material.Basalt,    Enum.Material.Ice,
	Enum.Material.Salt,       Enum.Material.Cobblestone, Enum.Material.Limestone, Enum.Material.Asphalt,
	Enum.Material.LeafyGrass, Enum.Material.Pavement,
}

local MaterialSelector = Roact.PureComponent:extend(script.Name)
local MaterialTooltip = Roact.PureComponent:extend("MaterialTooltip")
local MaterialButton = Roact.PureComponent:extend("MaterialButton")

do
	function MaterialTooltip:init()
		self.ref = Roact.createRef()
	end

	function MaterialTooltip:didMount()
		if self.ref.current then
			local tooltip = self.ref.current

			local pos = tooltip.AbsolutePosition
			local size = tooltip.AbsoluteSize

			local containerPosition = tooltip.Parent.Parent.AbsolutePosition
			local containerSize = tooltip.Parent.Parent.AbsoluteSize

			-- Nil if we don't need to update the tooltip
			-- Else is what the offset should be so the tooltip is on screen
			local newOffset

			if pos.x < containerPosition.x then
				newOffset = containerPosition.x - pos.x
			elseif pos.x + size.x > containerPosition.x + containerSize.x then
				newOffset = (containerPosition.x + containerSize.x)  - (pos.x + size.x) - 1
			end

			if newOffset then
				local p = tooltip.Position
				tooltip.Position = UDim2.new(p.X.Scale, newOffset, p.Y.Scale, p.Y.Offset)
			end
		end
	end

	function MaterialTooltip:render()
		return withTheme(function(theme)
			local materialName = self.props.MaterialName
			local tooltipSize = TextService:GetTextSize(materialName, theme.textSize, 0, Vector2.new())

			return Roact.createElement("TextLabel", {
				BackgroundTransparency = 0,
				BackgroundColor3 = theme.backgroundColor,
				Size = UDim2.new(0, tooltipSize.x + theme.padding * 2, 0, theme.textSize * 1.5),
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, -theme.textSize),

				Text = materialName,
				TextSize = theme.textSize,
				TextColor3 = theme.textColor,
				Font = theme.textFont,
				ZIndex = 5,

				[Roact.Ref] = self.ref,
			})
		end)
	end

	function MaterialButton:init(props)
		self.onMouseEnter = function()
			self.props.OnMouseEnter(self.props.Material)
		end

		self.onMouseLeave = function()
			self.props.OnMouseLeave(self.props.Material)
		end

		self.selectMaterial = function()
			self.props.SelectMaterial(self.props.Material)
		end
	end

	function MaterialButton:render()
		return withLocalization(function(localization)
			return withTheme(function(theme)
				local props = self.props
				local layoutOrder = props.LayoutOrder
				local material = props.Material

				local isSelected = props.IsSelected
				local isHovered = props.IsHovered

				local image = MaterialDetails[material].image

				local materialName
				if isHovered then
					materialName = localization:getText("Materials", material.Name)
				end

				return Roact.createElement("ImageButton", {
					LayoutOrder = layoutOrder,
					Image = TexturePath .. image,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BorderSizePixel = isSelected and 2 or 0,
					BorderColor3 = isSelected and theme.selectionBorderColor or theme.borderColor,

					[Roact.Event.MouseEnter] = self.onMouseEnter,
					[Roact.Event.MouseLeave] = self.onMouseLeave,
					[Roact.Event.Activated] = self.selectMaterial,
				}, {
					Tooltip = isHovered and Roact.createElement(MaterialTooltip, {
						MaterialName = materialName,
					}),
				})
			end)
		end)
	end
end

function MaterialSelector:init(props)
	self.terrainBrush = TerrainInterface.getTerrainBrush(self)
	assert(self.terrainBrush, "MaterialSettings requires a TerrainBrush from context")

	self.state = {
		hoverMaterial = nil
	}

	self.onMouseEnterMaterial = function(material)
		self:setState({
			hoverMaterial = material
		})
	end

	self.onMouseLeaveMaterial = function(material)
		self:setState({
			hoverMaterial = Roact.None,
		})
	end

	self.selectMaterial = function(material)
		self.props.setMaterial(material)
	end

	self.materialSelectedConnection = self.terrainBrush:subscribeToMaterialSelectRequested(self.selectMaterial)
end

function MaterialSelector:willUnmount()
	if self.materialSelectedConnection then
		self.materialSelectedConnection:disconnect()
		self.materialSelectedConnection = nil
	end
end

function MaterialSelector:render()
	return withLocalization(function(localization)
		return withTheme(function(theme)
			local layoutOrder = self.props.LayoutOrder
			local material = self.props.material

			local materialsTable = {
				UIGridLayout = Roact.createElement("UIGridLayout", {
					CellSize = UDim2.new(0, 32, 0, 32),
					CellPadding = UDim2.new(0, 9, 0, 9),
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
				}),

				LayoutPadding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, 9),
					PaddingBottom = UDim.new(0, 9),
					PaddingLeft = UDim.new(0, 9),
					PaddingRight = UDim.new(0, 9),
				}),
			}

			for index, materialEnum in ipairs(materialsOrder) do
				materialsTable[materialEnum.Name] = Roact.createElement(MaterialButton, {
					LayoutOrder = index,
					Material = materialEnum,
					IsHovered = materialEnum == self.state.hoverMaterial,
					IsSelected = material == materialEnum,

					OnMouseEnter = self.onMouseEnterMaterial,
					OnMouseLeave = self.onMouseLeaveMaterial,
					SelectMaterial = self.selectMaterial,
				})
			end

			return Roact.createElement("Frame", {
				LayoutOrder = layoutOrder,
				Size = UDim2.new(0, 230, 0, 235),
				Position = UDim2.new(0, 20, 0, 0),
				BackgroundTransparency = 1,
			}, {
				Label = Roact.createElement("TextLabel", {
					Text = localization:getText("MaterialSettings", "ChooseMaterial"),
					TextColor3 = theme.textColor,
					Size = UDim2.new(1, 0, 0, 16),
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.new(0, 20, 0, 0),
					BackgroundTransparency = 1,
				}),

				Container = Roact.createElement("Frame", {
					BackgroundColor3 = theme.backgroundColor,
					Size = UDim2.new(0, 230, 0, 214),
					Position = UDim2.new(0, 20, 0, 20),
					BorderColor3 = theme.borderColor,
				}, materialsTable)
			})
		end)
	end)
end

return MaterialSelector