-- Generated with Unluau (https://github.com/valencefun/unluau)
return require(script.Parent.Parent.Parent.Packages.Framework).Util.Action(script.Name, function(arg1)
   if typeof(arg1) == "number" then
      local var0 = false
   end
   local var0 = true
   local var1 = string.format("Expected selectedIndex to be a number, received %s", type(arg1))
   assert()
   local var2 = {}
   var2.selectedIndex = arg1
   return var2
end)
