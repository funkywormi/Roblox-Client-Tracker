-- Generated with Unluau (https://github.com/valencefun/unluau)
return require(script.Parent.Action)(script.Name, function(arg1)
   if typeof(arg1) == "EnumItem" then
      local var0 = false
   end
   local var0 = true
   local var1 = `Expected TargetMaterial to be a EnumItem, received {typeof(arg1)}`
   assert()
   local var2 = {}
   var2.TargetMaterial = arg1
   return var2
end)
