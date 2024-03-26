-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI.RadioButtonList
local var4 = var2.ContextServices
local var5 = require(var0.Src.Util.Constants)
local var6 = var1.PureComponent:extend("IKModeButtons")
local function fun0(arg1)
   local var0 = arg1.props.Localization
   local var1 = arg1.props
   local var2 = var1.Stylizer
   local var37 = {}
   var37.Size = UDim2.new(1, 0, 0, var1.Height)
   var37.BackgroundColor3 = var2.ikTheme.headerColor
   var37.BorderSizePixel = 1
   var37.BorderColor3 = var2.ikTheme.headerBorder
   var37.LayoutOrder = var1.LayoutOrder
   local var49 = {}
   local var53 = {}
   var53.AnchorPoint = Vector2.new(0, 0.5)
   var53.Position = UDim2.new(0, 0, 0.5, 0)
   var53.Size = UDim2.new(0, 64, 0, var5.TRACK_HEIGHT)
   var53.BackgroundTransparency = 1
   var53.TextSize = var2.ikTheme.textSize
   var53.Font = var2.font
   var53.TextColor3 = var2.ikTheme.textColor
   var53.TextXAlignment = Enum.TextXAlignment.Center
   var53.TextYAlignment = Enum.TextYAlignment.Center
   var53.Text = var0:getText("IKMenu", "IKMode")
   var53.LayoutOrder = 0
   var49.IKModeLabel = var1.createElement("TextLabel", var53)
   local var88 = {}
   var88.BackgroundTransparency = 1
   var88.AnchorPoint = Vector2.new(1, 0.5)
   var88.Position = UDim2.new(1, 0, 0.5, 0)
   var88.Size = UDim2.new(0, 186, 0.5, 0)
   var88.LayoutOrder = 1
   local var107 = {}
   local var111 = {}
   local var3 = {}
   var3.Key = var5.IK_MODE.BodyPart
   var3.Text = var0:getText("IKMenu", "BodyPart")
   local var4 = {}
   var4.Key = var5.IK_MODE.FullBody
   var4.Text = var0:getText("IKMenu", "FullBody")
   var111.Buttons = {}
   var111.SelectedKey = var1.IKMode
   var111.FillDirection = Enum.FillDirection.Horizontal
   var111.LayoutOrder = 1
   var111.OnClick = var1.SetIKMode
   var107.RadioButtons = var1.createElement(var3, var111)
   var49.RadioButtonsFrame = var1.createElement("Frame", var88, var107)
   return var1.createElement("Frame", var37, var49)
end

function var6.render(arg1)
   local var0 = arg1.props.Localization
   local var1 = arg1.props
   local var2 = var1.Stylizer
   local var37 = {}
   var37.Size = UDim2.new(1, 0, 0, var1.Height)
   var37.BackgroundColor3 = var2.ikTheme.headerColor
   var37.BorderSizePixel = 1
   var37.BorderColor3 = var2.ikTheme.headerBorder
   var37.LayoutOrder = var1.LayoutOrder
   local var49 = {}
   local var53 = {}
   var53.AnchorPoint = Vector2.new(0, 0.5)
   var53.Position = UDim2.new(0, 0, 0.5, 0)
   var53.Size = UDim2.new(0, 64, 0, var5.TRACK_HEIGHT)
   var53.BackgroundTransparency = 1
   var53.TextSize = var2.ikTheme.textSize
   var53.Font = var2.font
   var53.TextColor3 = var2.ikTheme.textColor
   var53.TextXAlignment = Enum.TextXAlignment.Center
   var53.TextYAlignment = Enum.TextYAlignment.Center
   var53.Text = var0:getText("IKMenu", "IKMode")
   var53.LayoutOrder = 0
   var49.IKModeLabel = var1.createElement("TextLabel", var53)
   local var88 = {}
   var88.BackgroundTransparency = 1
   var88.AnchorPoint = Vector2.new(1, 0.5)
   var88.Position = UDim2.new(1, 0, 0.5, 0)
   var88.Size = UDim2.new(0, 186, 0.5, 0)
   var88.LayoutOrder = 1
   local var107 = {}
   local var111 = {}
   local var3 = {}
   var3.Key = var5.IK_MODE.BodyPart
   var3.Text = var0:getText("IKMenu", "BodyPart")
   local var4 = {}
   var4.Key = var5.IK_MODE.FullBody
   var4.Text = var0:getText("IKMenu", "FullBody")
   var111.Buttons = {}
   var111.SelectedKey = var1.IKMode
   var111.FillDirection = Enum.FillDirection.Horizontal
   var111.LayoutOrder = 1
   var111.OnClick = var1.SetIKMode
   var107.RadioButtons = var1.createElement(var3, var111)
   var49.RadioButtonsFrame = var1.createElement("Frame", var88, var107)
   return var1.createElement("Frame", var37, var49)
end

fun0 = var4.withContext
local var134 = {}
var134.Stylizer = var4.Stylizer
var134.Localization = var4.Localization
var6 = fun0(var134)(var6)
return var6
