-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.CodeBlock)
local var1 = {}
var1.__index = var1
function var1.new()
   local var6 = {}
   var6._root = var0.new(1, 1)
   return setmetatable(var6, var1)
end

function var1.GetRoot(arg1)
   return arg1._root
end

function var1.TraverseBF(arg1, arg2)
   local var0 = {}
   local var20 = arg1._root
   while 0 < var0 do
      local var0 = var0[1]
      table.remove(var0, 1)
      local var29 = ipairs(var0.Children)
      table.insert(var0, var31)
      var29 = arg2
      var29(var0)
   end
end

function var1.TraverseUp(arg1, arg2)
   local var0 = arg1
   while var0 do
      if arg2(var0) then
      end
      local var0 = var0.Parent
   end
end

return var1
