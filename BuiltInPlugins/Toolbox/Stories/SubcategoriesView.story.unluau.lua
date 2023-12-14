-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Stories.ToolboxStoryWrapper)
local var3 = require(var0.Core.Components.Categorization.SubcategoriesView)
local function var4(arg1)
   return var1.createElement(var2, arg1)
end

local var5 = {}
var5.summary = "A grid of Subcategory IconTiles with flexible widths."
local var6 = {}
var6.name = "SubcategoriesView"
var6.summary = "Example with 5 subcategories."
function var6.story()
   local var33 = {}
   local var37 = {}
   var37.Size = UDim2.new(1, 0, 0, 200)
   local var0 = {}
   var0.displayName = "Category"
   var0.children = {}
   var0.childCount = 0
   var0.index = 1
   var0.name = "1"
   var0.path = {}
   local var52 = {}
   var52.assetId = 5657301130
   var52.backgroundColor = "#32a852"
   var0.thumbnail = var52
   local var2 = {}
   var2.displayName = "Vehicle"
   var2.children = {}
   var2.childCount = 0
   var2.index = 2
   var2.name = "2"
   var2.path = {}
   local var62 = {}
   var62.assetId = 5657301130
   var62.backgroundColor = "#32a852"
   var2.thumbnail = var62
   local var4 = {}
   var4.displayName = "3rd"
   var4.children = {}
   var4.childCount = 0
   var4.index = 3
   var4.name = "3"
   var4.path = {}
   local var72 = {}
   var72.assetId = 5657301130
   var72.backgroundColor = "#32a852"
   var4.thumbnail = var72
   local var6 = {}
   var6.displayName = "4"
   var6.children = {}
   var6.childCount = 0
   var6.index = 3
   var6.name = "4"
   var6.path = {}
   local var82 = {}
   var82.assetId = 5657301130
   var82.backgroundColor = "#32a852"
   var6.thumbnail = var82
   local var8 = {}
   var8.displayName = "5"
   var8.children = {}
   var8.childCount = 0
   var8.name = "5"
   var8.index = 3
   var8.path = {}
   local var9 = {}
   var9.assetId = 5657301130
   var9.backgroundColor = "#32a852"
   var8.thumbnail = var9
   var37.SubcategoryDict = {}
   var33.IconTile = var1.createElement(var3, var37)
   return var1.createElement(var4, {}, var33)
end

var5.stories = {}
return var5
