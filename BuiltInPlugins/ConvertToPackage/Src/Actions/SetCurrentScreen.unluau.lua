-- Generated with Unluau (https://github.com/valencefun/unluau)
return require(script.Parent.Parent.Parent.Src.Actions.Action)(script.Name, function(arg1)
   if type(arg1) == "string" then
      local var0 = false
   end
   local var0 = true
   local var1 = string.format("screen arg must be a string, received %s", tostring(arg1))
   assert()
   local var2 = {}
   var2.currentScreen = arg1
   return var2
end)
