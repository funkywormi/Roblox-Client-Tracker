-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Reducers.RootReducer)
local var2 = require(var0.Src.Util.MenuHelpers)
local var3 = require(var0.Src.Resources.ModernIcons)
local var4 = var0.Src.Thunks
local var5 = require(var4.Change.CreateStyleRule)
local var6 = require(var4.Change.DeleteInstance)
local var7 = require(var4.Change.PasteInstanceInto)
local var8 = require(var4.Change.ShowInstanceInExplorer)
local var9 = require(var0.Src.Types)
local var10 = require(var0.Src.Thunks.Types)
return function(arg1, arg2)
   return function(arg1)
      local var0 = arg1(var5, arg1.Data.Selector)
      var2:dispatch()
   end
end
