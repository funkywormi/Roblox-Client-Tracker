-- Generated with Unluau (https://github.com/valencefun/unluau)
local var46 = require(script.Parent.Parent.Parent.Parent.Packages.Framework).Styling
local var1 = var46.createStyleRule
var46 = var1
local var49 = {}
var49.BackgroundColor3 = "$BackgroundPaper"
var49.BorderSizePixel = 0
local var55 = {}
var55.CornerRadius = UDim.new(0, 10)
local var3 = var1("::UICorner", var55)
local var63 = {}
var63.BackgroundColor3 = "$BackgroundHover"
local var5 = var1(":hover", var63)
local var68 = {}
var68.TextSize = 24
var68.Font = Enum.Font.Gotham
var68.TextColor3 = "$TextPrimary"
var68.Size = UDim2.new(1, 0, 0, 50)
var68.BackgroundTransparency = 1
var68.TextXAlignment = Enum.TextXAlignment.Center
var68.TextYAlignment = Enum.TextYAlignment.Center
local var6 = var1("> TextLabel", var68)
local var84 = {}
var84.TextSize = 50
var84.Font = Enum.Font.Gotham
var84.TextColor3 = "$TextPrimary"
var84.Size = UDim2.new(1, 0, 0, 100)
var84.BackgroundTransparency = 1
var84.TextXAlignment = Enum.TextXAlignment.Center
var84.TextYAlignment = Enum.TextYAlignment.Center
local var7 = var1("> TextButton", var84)
return var46(".Component-CounterExample", var49, {})
