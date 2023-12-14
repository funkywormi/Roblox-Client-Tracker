-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework).Styling.createStyleRule
local var2 = require(var0.Src.Util.TraySize).TRAY_WIDTH
local var34 = {}
var34.BackgroundColor3 = "$BackgroundDefault"
var34.BorderSizePixel = 0
var34.Size = UDim2.new(0, var2 - 11, 0, 0)
var34.AutomaticSize = Enum.AutomaticSize.Y
local var47 = {}
var47.PaddingLeft = UDim.new(0, 6)
var47.PaddingRight = UDim.new(0, 3)
var47.PaddingTop = UDim.new(0, 0)
var47.PaddingBottom = UDim.new(0, 0)
local var64 = var1("::UIPadding", var47)
local var67 = {}
var67.BackgroundColor3 = "$ForegroundMain"
var67.Size = UDim2.new(1, 0, 1, 0)
var67.TextTransparency = 1
local var79 = {}
var79.PaddingLeft = "$NotificationContentPadding"
var79.PaddingRight = "$NotificationContentPaddingXL"
var79.PaddingTop = "$NotificationContentPadding"
var79.PaddingBottom = "$NotificationContentPadding"
local var4 = var1("::UIPadding", var79)
local var87 = {}
var87.FillDirection = Enum.FillDirection.Horizontal
var87.SortOrder = Enum.SortOrder.LayoutOrder
var87.Padding = "$NotificationContentPadding"
local var6 = var1("::UIListLayout", var87)
local var94 = {}
var94.CornerRadius = UDim.new(0, 4)
local var8 = var1("::UICorner", var94)
local var102 = {}
var102.BackgroundTransparency = 1
var102.BorderSizePixel = 0
var102.Size = UDim2.new(0, 20, 0, 20)
local var10 = var1("> #Icon", var102)
local var108 = {}
var108.Size = UDim2.new(0, var2 - 20 - 65, 0, 0)
local var11 = var1("> #Content", var108)
local var118 = {}
var118.Size = UDim2.new(1, 0, 1, 0)
var118.BackgroundTransparency = 1
local var129 = {}
var129.BackgroundTransparency = 1
var129.BorderSizePixel = 0
var129.Size = UDim2.new(0, 16, 0, 16)
local var12 = var1("> #Indicator", var129)
local var13 = var1("> #StatusIndicator", var118, {})
local var134 = var1("> #InnerCard", var67, {})
local var135 = {}
var135.NotificationContentPadding = UDim.new(0, 6)
var135.NotificationContentPaddingXL = UDim.new(0, 12)
return var1(".Component-InnerNotificationCard", var34, {}, var135)
