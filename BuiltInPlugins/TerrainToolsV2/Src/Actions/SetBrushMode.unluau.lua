-- Generated with Unluau (https://github.com/valencefun/unluau)
return require(script.Parent.Action)(script.Name, function(arg1)
   if typeof(arg1) == "string" then
      local var0 = false
   end
   local var0 = true
   local var1 = `Expected BrushMode to be a string, received {typeof(arg1)}`
   assert()
   local var2 = {}
   var2.brushMode = arg1
   return var2
end)
