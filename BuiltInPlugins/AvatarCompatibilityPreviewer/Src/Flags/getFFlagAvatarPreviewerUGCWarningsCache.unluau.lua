-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.getFFlagAvatarPreviewerNewContextStack)
game:DefineFastFlag("AvatarPreviewerUGCWarningsCache", false)
return function()
   return var0() and game:GetFastFlag("AvatarPreviewerUGCWarningsCache")
end
