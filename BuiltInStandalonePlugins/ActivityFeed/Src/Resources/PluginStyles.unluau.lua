-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Src.Resources.StyleTips)
local var3 = var1.Styling.createStyleRule
local var20 = {}
var20.BackgroundTransparency = 1
local var22 = var3(".CX-Invisible", var20)
local var25 = {}
var25.Size = UDim2.new(1, 0, 0, 1)
var25.BackgroundColor3 = "$Divider"
local var33 = var3(".CX-Divider", var25)
local var36 = {}
var36.BorderSizePixel = 0
local var38 = var3("Frame", var36)
local var41 = {}
var41.Font = var2.defaultFont
var41.TextSize = var2.normalFontSize
local var44 = var3("TextLabel", var41)
local var47 = {}
var47.Font = var2.defaultFont
var47.TextSize = var2.buttonFontSize
local var50 = var3("TextButton", var47)
var33 = var1.Styling.createStyleSheet
var44 = {}
var50 = {}
return var33("ActivityHistoryPlugin", var44, var50)
