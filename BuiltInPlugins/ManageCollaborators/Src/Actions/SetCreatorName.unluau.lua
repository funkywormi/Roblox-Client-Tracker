-- Generated with Unluau (https://github.com/valencefun/unluau)
local var8 = require(script.Parent.Parent.Parent.Packages.Framework).Util
var8 = var8.Action
return var8(script.Name, function(arg1)
   if typeof(arg1) == "string" then
      local var0 = false
   end
   local var18 = script
   var18 = arg1
   assert(true, var18.Name ... " requires creatorName to be a string, not " ... typeof(var18))
   local var0 = {}
   var0.creatorName = arg1
   return var0
end)
