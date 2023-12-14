-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = game:GetService("GuiService")
local var2 = game:GetService("HttpRbxApiService")
local var3 = require(var0.Packages.Roact)
local var4 = require(var0.src.Assets)
local var5 = require(var0.src.components.AvatarButton)
local var6 = require(var0.src.Constants)
local var7 = require(var0.src.utils.themeConfig)
local var8 = require(var0.src.utils.getTextWidth)
local var9 = require(var0.src.flags.getFFlagShowAvatarImportDeprecation)
local var10 = require(var0.src.flags.getFStringAvatarImportDeprecationMessage)
local var11 = settings().Studio
local var12 = var3.Component:extend("AvatarPrompt")
function var12.render(arg1)
   local var0 = 0
   local var1 = nil
   if var9() then
      local var0 = 28
      local var65 = {}
      var65.BackgroundColor3 = var6.WARNING_COLOR
      var65.BorderSizePixel = 0
      var65.Font = var6.FONT
      var65.Name = "DeprecationBanner"
      var65.Position = UDim2.new(0, 0, 0, 0)
      var65.Size = UDim2.new(1, 0, 0, 28)
      var65.Text = var10()
      var65.TextSize = var6.FONT_SIZE_LARGE
      var65.TextXAlignment = Enum.TextXAlignment.Center
      var65.TextYAlignment = Enum.TextYAlignment.Center
      var65.TextColor3 = var6.WARNING_TEXT_COLOR
      var1 = var3.createElement("TextLabel", var65)
   end
   local var96 = {}
   var96.Name = "AvatarPrompt"
   var96.Size = UDim2.new(1, 0, 1, 0)
   var96.BackgroundColor3 = var11.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground, Enum.StudioStyleGuideModifier.Default)
   local var110 = {}
   local var114 = {}
   var114.BackgroundTransparency = 1
   var114.Name = "Content"
   var114.Position = UDim2.new(0, 0, 0, 0)
   var114.Size = UDim2.new(1, 0, 1, 0)
   local var129 = {}
   var129.deprecationBanner = var1
   local var133 = {}
   var133.BackgroundTransparency = 1
   var133.Font = var6.FONT
   var133.Name = "TopDescription"
   var133.Position = UDim2.new(0, 0, 0, 20 + var0)
   var133.Size = UDim2.new(1, 0, 0, 18)
   var133.Text = "Choose the Avatar type you are going to import:"
   var133.TextSize = var6.FONT_SIZE_LARGE
   var133.TextXAlignment = Enum.TextXAlignment.Center
   var133.TextYAlignment = Enum.TextYAlignment.Top
   var133.TextColor3 = var11.Theme:GetColor(Enum.StudioStyleGuideColor.MainText, Enum.StudioStyleGuideModifier.Default)
   var129.topDescription = var3.createElement("TextLabel", var133)
   local var166 = {}
   var166.BackgroundTransparency = 1
   var166.Name = "Buttons"
   var166.Position = UDim2.new(0, var6.BUTTON_SIDE_PADDING, 0, var6.BUTTON_TOP_PADDING + var0)
   var166.Size = UDim2.new(1, var6.BUTTON_SIDE_PADDING * 2, 0, var6.BUTTON_HEIGHT)
   local var188 = {}
   local var192 = {}
   var192.FillDirection = Enum.FillDirection.Horizontal
   var192.Padding = UDim.new(0, var6.BUTTON_CENTER_PADDING)
   var192.SortOrder = Enum.SortOrder.LayoutOrder
   var188.buttonsListLayout = var3.createElement("UIListLayout", var192)
   local var204 = {}
   var204.name = "Rthro"
   var204.avatarType = var6.AVATAR_TYPE.RTHRO
   var204.iconOptions = var4.RTHRO
   var204.contextInfo = var6.RTHRO_INFO
   var204.layoutOrder = 0
   var188.rthroButton = var3.createElement(var5, var204)
   local var218 = {}
   var218.name = "Rthro Narrow"
   var218.avatarType = var6.AVATAR_TYPE.RTHRO_SLENDER
   var218.iconOptions = var4.RTHRO_NARROW
   var218.contextInfo = var6.RTHRO_SLENDER_INFO
   var218.layoutOrder = 1
   var188.rthroNarrowButton = var3.createElement(var5, var218)
   local var232 = {}
   var232.name = "R15"
   var232.avatarType = var6.AVATAR_TYPE.R15
   var232.iconOptions = var4.R15
   var232.contextInfo = var6.R15_INFO
   var232.layoutOrder = 2
   var188.r15Button = var3.createElement(var5, var232)
   local var246 = {}
   var246.name = "Custom"
   var246.avatarType = var6.AVATAR_TYPE.CUSTOM
   var246.iconOptions = var4.CUSTOM
   var246.contextInfo = var6.CUSTOM_INFO
   var246.layoutOrder = 3
   var188.customButton = var3.createElement(var5, var246)
   var129.buttons = var3.createElement("Frame", var166, var188)
   local var261 = {}
   var261.BackgroundTransparency = 1
   var261.Position = UDim2.new(0, 0, 0, 307 + var0)
   var261.Size = UDim2.new(1, 0, 1, 307 + var0)
   local var278 = {}
   local var282 = {}
   var282.FillDirection = Enum.FillDirection.Vertical
   var282.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var282.SortOrder = Enum.SortOrder.LayoutOrder
   var278.bottomDescriptionListLayout = var3.createElement("UIListLayout", var282)
   local var290 = {}
   var290.BackgroundTransparency = 1
   var290.Font = var6.FONT
   var290.LayoutOrder = 0
   var290.Size = UDim2.new(0, var8(var6.REQUIREMENTS_DESCRIPTION, var6.FONT_SIZE_SMALL, var6.FONT), 0, var6.FONT_SIZE_SMALL)
   var290.Text = var6.REQUIREMENTS_DESCRIPTION
   var290.TextSize = var6.FONT_SIZE_SMALL
   var290.TextXAlignment = Enum.TextXAlignment.Center
   var290.TextYAlignment = Enum.TextYAlignment.Center
   local var316 = {}
   var316.Light = Color3.fromRGB(98, 98, 98)
   var316.Dark = Color3.fromRGB(204, 204, 204)
   var290.TextColor3 = var7(var316)
   var278.requirementsText = var3.createElement("TextLabel", var290)
   var278.infoLink = false
   var129.bottomDescription = var3.createElement("Frame", var261, var278)
   var110.content = var3.createElement("Frame", var114, var129)
   return var3.createElement("Frame", var96, var110)
end

return var12
