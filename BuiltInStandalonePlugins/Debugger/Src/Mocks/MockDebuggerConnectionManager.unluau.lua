-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Framework).Util.Signal
local var1 = {}
var1.__index = var1
function var1.new()
   local var0 = {}
   var0.ConnectionStarted = var0.new()
   var0.ConnectionEnded = var0.new()
   local var18 = var0
   var0.FocusChanged = var18.new()
   var18 = var0
   setmetatable(var18, var1)
   return var0
end

return var1
