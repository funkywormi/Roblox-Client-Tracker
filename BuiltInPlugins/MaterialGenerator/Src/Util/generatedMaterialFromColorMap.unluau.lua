-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Types)
local var2 = var0.Src.Util
local var3 = require(var2.createMaterialVariant)
local var4 = require(var2.DEPRECATED_getNewMaterialName)
return function(arg1, arg2, arg3, arg4)
   local var0 = {}
   var0.Name = var4(arg1, game:GetService("MaterialService"))
   var0.Id = arg2
   local var28 = {}
   var28.ColorMap = arg3
   var0.Textures = var28
   var0.BaseMaterial = nil
   var0.IsGenerating = false
   var0.IsTemporary = true
   var0.MaterialVariant = var3(var0)
   return var0
end
