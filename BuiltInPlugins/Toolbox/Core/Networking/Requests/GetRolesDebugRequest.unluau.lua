-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Core.Flags.getFFlagToolboxAddNewUGCAssetTypes)
local var2 = require(var0.Packages.Framework).Util.Promise
local var3 = require(var0.Core.Actions.NetworkError)
local var4 = require(var0.Core.Actions.SetAllowedAssetTypes)
local var5 = require(var0.Core.Actions.SetAllowedBundleTypes)
local var6 = require(var0.Core.Actions.SetTagsMetadata)
local var7 = require(var0.Core.Util.DebugFlags)
local var8 = require(var0.Core.Util.SharedFlags.getFFlagEnableUGCBodyUploadFlow)
local var9 = require(var0.Core.Util.SharedFlags.getFFlagToolboxAddAvatarTagDataIntoMock)
local var10 = {}
local var54 = {}
var54.minRobux = 50
var54.maxRobux = 5000
var10.allowedPriceRange = var54
var10.marketplaceFeesPercentage = 70
local var58 = {}
local var60 = 25
local var14 = 50
local var15 = 75
var58.allowedDiscountPercentages = {}
local var16 = {}
var16.minRobux = 50
var16.maxRobux = 5000
var58.allowedPriceRange = var16
var10.premiumPricing = var58
function getDebugUgcBundleMetadata()
   local var0 = {}
   local var67 = {}
   local var68 = {}
   local var69 = {}
   var69.minimumQuantity = 1
   var69.maximumQuantity = 1
   var69.isEligibleForUpload = true
   local var74 = ".rbxm"
   var69.allowedFileExtensions = {}
   var68.DynamicHead = var69
   local var75 = {}
   var75.minimumQuantity = 1
   var75.maximumQuantity = 1
   var75.isEligibleForUpload = true
   local var80 = ".rbxm"
   var75.allowedFileExtensions = {}
   var68.LeftArm = var75
   local var81 = {}
   var81.minimumQuantity = 1
   var81.maximumQuantity = 1
   var81.isEligibleForUpload = true
   local var86 = ".rbxm"
   var81.allowedFileExtensions = {}
   var68.LeftLeg = var81
   local var87 = {}
   var87.minimumQuantity = 1
   var87.maximumQuantity = 1
   var87.isEligibleForUpload = true
   local var92 = ".rbxm"
   var87.allowedFileExtensions = {}
   var68.RightArm = var87
   local var93 = {}
   var93.minimumQuantity = 1
   var93.maximumQuantity = 1
   var93.isEligibleForUpload = true
   local var98 = ".rbxm"
   var93.allowedFileExtensions = {}
   var68.RightLeg = var93
   local var99 = {}
   var99.minimumQuantity = 1
   var99.maximumQuantity = 1
   var99.isEligibleForUpload = true
   local var104 = ".rbxm"
   var99.allowedFileExtensions = {}
   var68.Torso = var99
   local var105 = {}
   var105.minimumQuantity = 0
   var105.maximumQuantity = 1
   var105.isEligibleForUpload = true
   local var110 = ".rbxm"
   var105.allowedFileExtensions = {}
   var68.EyebrowAccessory = var105
   local var111 = {}
   var111.minimumQuantity = 0
   var111.maximumQuantity = 1
   var111.isEligibleForUpload = true
   local var116 = ".rbxm"
   var111.allowedFileExtensions = {}
   var68.EyelashAccessory = var111
   local var117 = {}
   var117.minimumQuantity = 0
   var117.maximumQuantity = 1
   var117.isEligibleForUpload = true
   local var122 = ".rbxm"
   var117.allowedFileExtensions = {}
   var68.HairAccessory = var117
   local var123 = {}
   var123.minimumQuantity = 0
   var123.maximumQuantity = 1
   var123.isEligibleForUpload = false
   var123.allowedFileExtensions = nil
   var68.MoodAnimation = var123
   var67.allowedAssetTypeSettings = var68
   var67.marketplaceFeePercentage = 30
   local var129 = {}
   var129.minimumPrice = 0
   var129.maximumPrice = 5000
   var67.allowedPriceRange = var129
   var0.Body = var67
   local var23 = {}
   local var133 = {}
   local var134 = {}
   var134.minimumQuantity = 1
   var134.maximumQuantity = 1
   var134.isEligibleForUpload = true
   local var139 = ".rbxm"
   var134.allowedFileExtensions = {}
   var133.DynamicHead = var134
   local var140 = {}
   var140.minimumQuantity = 0
   var140.maximumQuantity = 1
   var140.isEligibleForUpload = true
   local var145 = ".rbxm"
   var140.allowedFileExtensions = {}
   var133.EyebrowAccessory = var140
   local var146 = {}
   var146.minimumQuantity = 0
   var146.maximumQuantity = 1
   var146.isEligibleForUpload = true
   local var30 = ".rbxm"
   var146.allowedFileExtensions = {}
   var133.EyelashAccessory = var146
   var23.allowedAssetTypeSettings = var133
   var23.marketplaceFeePercentage = 30
   local var31 = {}
   var31.minimumPrice = 0
   var31.maximumPrice = 10000
   var23.allowedPriceRange = var31
   var0.DynamicHead = var23
   return var0
end

return function(arg1)
   return function(arg1)
      local var0 = {}
      local var159 = {}
      local var162 = ".png"
      local var163 = ".bmp"
      var159.allowedFileExtensions = { ".jpg" }
      var0.Image = var159
      local var164 = {}
      local var166 = ".mesh"
      var164.allowedFileExtensions = {}
      var0.Mesh = var164
      local var167 = {}
      local var169 = ".rbxm"
      var167.allowedFileExtensions = {}
      var0.Hat = var167
      local var170 = {}
      local var172 = ".rbxm"
      var170.allowedFileExtensions = {}
      var0.HairAccessory = var170
      local var173 = {}
      local var175 = ".rbxm"
      var173.allowedFileExtensions = {}
      var0.FaceAccessory = var173
      local var176 = {}
      local var178 = ".rbxm"
      var176.allowedFileExtensions = {}
      var0.NeckAccessory = var176
      local var179 = {}
      local var181 = ".rbxm"
      var179.allowedFileExtensions = {}
      var0.ShoulderAccessory = var179
      local var182 = {}
      local var184 = ".rbxm"
      var182.allowedFileExtensions = {}
      var0.FrontAccessory = var182
      local var185 = {}
      local var187 = ".rbxm"
      var185.allowedFileExtensions = {}
      var0.BackAccessory = var185
      local var188 = {}
      local var190 = ".rbxm"
      var188.allowedFileExtensions = {}
      var0.WaistAccessory = var188
      local var191 = {}
      local var193 = ".rbxm"
      var191.allowedFileExtensions = {}
      var0.TShirtAccessory = var191
      local var194 = {}
      local var196 = ".rbxm"
      var194.allowedFileExtensions = {}
      var0.ShirtAccessory = var194
      local var197 = {}
      local var199 = ".rbxm"
      var197.allowedFileExtensions = {}
      var0.PantsAccessory = var197
      local var200 = {}
      local var202 = ".rbxm"
      var200.allowedFileExtensions = {}
      var0.JacketAccessory = var200
      local var203 = {}
      local var205 = ".rbxm"
      var203.allowedFileExtensions = {}
      var0.SweaterAccessory = var203
      local var206 = {}
      local var208 = ".rbxm"
      var206.allowedFileExtensions = {}
      var0.ShortsAccessory = var206
      local var209 = {}
      local var211 = ".rbxm"
      var209.allowedFileExtensions = {}
      var0.LeftShoeAccessory = var209
      local var212 = {}
      local var214 = ".rbxm"
      var212.allowedFileExtensions = {}
      var0.RightShoeAccessory = var212
      local var215 = {}
      local var217 = ".rbxm"
      var215.allowedFileExtensions = {}
      var0.DressSkirtAccessory = var215
      local var218 = {}
      local var220 = ".rbxm"
      var218.allowedFileExtensions = {}
      var0.Plugin = var218
      if var1() then
         local var223 = {}
         local var225 = ".rbxm"
         var223.allowedFileExtensions = {}
         var0.Torso = var223
         local var226 = {}
         local var228 = ".rbxm"
         var226.allowedFileExtensions = {}
         var0.RightArm = var226
         local var229 = {}
         local var231 = ".rbxm"
         var229.allowedFileExtensions = {}
         var0.LeftArm = var229
         local var232 = {}
         local var234 = ".rbxm"
         var232.allowedFileExtensions = {}
         var0.LeftLeg = var232
         local var235 = {}
         local var237 = ".rbxm"
         var235.allowedFileExtensions = {}
         var0.RightLeg = var235
         local var238 = {}
         local var240 = ".rbxm"
         var238.allowedFileExtensions = {}
         var0.DynamicHead = var238
         local var241 = {}
         local var243 = ".rbxm"
         var241.allowedFileExtensions = {}
         var0.EyebrowAccessory = var241
         local var14 = {}
         local var15 = ".rbxm"
         var14.allowedFileExtensions = {}
         var0.EyelashAccessory = var14
      end
      local var41 = {}
      local var248 = {}
      local var249 = {}
      var249.minRobux = 50
      var249.maxRobux = 5000
      var248.allowedPriceRange = var249
      var248.marketplaceFeesPercentage = 70
      local var253 = {}
      local var255 = 25
      local var256 = 50
      local var257 = 75
      var253.allowedDiscountPercentages = {}
      local var258 = {}
      var258.minRobux = 50
      var258.maxRobux = 5000
      var253.allowedPriceRange = var258
      var248.premiumPricing = var253
      var41.Hat = var248
      local var261 = {}
      local var262 = {}
      var262.minRobux = 50
      var262.maxRobux = 5000
      var261.allowedPriceRange = var262
      var261.marketplaceFeesPercentage = 70
      local var266 = {}
      local var268 = 25
      local var269 = 50
      local var270 = 75
      var266.allowedDiscountPercentages = {}
      local var271 = {}
      var271.minRobux = 50
      var271.maxRobux = 5000
      var266.allowedPriceRange = var271
      var261.premiumPricing = var266
      var41.HairAccessory = var261
      local var274 = {}
      local var275 = {}
      var275.minRobux = 15
      var275.maxRobux = 5000
      var274.allowedPriceRange = var275
      var274.marketplaceFeesPercentage = 70
      local var279 = {}
      local var281 = 25
      local var282 = 50
      local var283 = 75
      var279.allowedDiscountPercentages = {}
      local var284 = {}
      var284.minRobux = 15
      var284.maxRobux = 5000
      var279.allowedPriceRange = var284
      var274.premiumPricing = var279
      var41.FaceAccessory = var274
      local var287 = {}
      local var288 = {}
      var288.minRobux = 20
      var288.maxRobux = 5000
      var287.allowedPriceRange = var288
      var287.marketplaceFeesPercentage = 70
      local var292 = {}
      local var294 = 25
      local var295 = 50
      local var296 = 75
      var292.allowedDiscountPercentages = {}
      local var297 = {}
      var297.minRobux = 20
      var297.maxRobux = 5000
      var292.allowedPriceRange = var297
      var287.premiumPricing = var292
      var41.NeckAccessory = var287
      local var300 = {}
      local var301 = {}
      var301.minRobux = 15
      var301.maxRobux = 5000
      var300.allowedPriceRange = var301
      var300.marketplaceFeesPercentage = 70
      local var305 = {}
      local var307 = 25
      local var308 = 50
      local var309 = 75
      var305.allowedDiscountPercentages = {}
      local var310 = {}
      var310.minRobux = 15
      var310.maxRobux = 5000
      var305.allowedPriceRange = var310
      var300.premiumPricing = var305
      var41.ShoulderAccessory = var300
      local var313 = {}
      local var314 = {}
      var314.minRobux = 20
      var314.maxRobux = 5000
      var313.allowedPriceRange = var314
      var313.marketplaceFeesPercentage = 70
      local var318 = {}
      local var320 = 25
      local var321 = 50
      local var322 = 75
      var318.allowedDiscountPercentages = {}
      local var323 = {}
      var323.minRobux = 20
      var323.maxRobux = 5000
      var318.allowedPriceRange = var323
      var313.premiumPricing = var318
      var41.FrontAccessory = var313
      local var326 = {}
      local var327 = {}
      var327.minRobux = 100
      var327.maxRobux = 10000
      var326.allowedPriceRange = var327
      var326.marketplaceFeesPercentage = 70
      local var331 = {}
      local var333 = 25
      local var334 = 50
      local var335 = 75
      var331.allowedDiscountPercentages = {}
      local var336 = {}
      var336.minRobux = 100
      var336.maxRobux = 10000
      var331.allowedPriceRange = var336
      var326.premiumPricing = var331
      var41.BackAccessory = var326
      local var339 = {}
      local var340 = {}
      var340.minRobux = 50
      var340.maxRobux = 5000
      var339.allowedPriceRange = var340
      var339.marketplaceFeesPercentage = 70
      local var344 = {}
      local var346 = 25
      local var347 = 50
      local var348 = 75
      var344.allowedDiscountPercentages = {}
      local var349 = {}
      var349.minRobux = 50
      var349.maxRobux = 5000
      var344.allowedPriceRange = var349
      var339.premiumPricing = var344
      var41.WaistAccessory = var339
      local var352 = {}
      local var353 = {}
      var353.minRobux = 5
      var353.maxRobux = 999999999
      var352.allowedPriceRange = var353
      var352.marketplaceFeesPercentage = 30
      var41.Shirt = var352
      local var357 = {}
      local var358 = {}
      var358.minRobux = 5
      var358.maxRobux = 999999999
      var357.allowedPriceRange = var358
      var357.marketplaceFeesPercentage = 30
      var41.Pants = var357
      local var362 = {}
      local var363 = {}
      var363.minRobux = 2
      var363.maxRobux = 999999999
      var362.allowedPriceRange = var363
      var362.marketplaceFeesPercentage = 30
      var41.TShirt = var362
      local var367 = {}
      local var368 = {}
      var368.minRobux = 50
      var368.maxRobux = 5000
      var367.allowedPriceRange = var368
      var367.marketplaceFeesPercentage = 70
      local var372 = {}
      local var374 = 25
      local var375 = 50
      local var376 = 75
      var372.allowedDiscountPercentages = {}
      local var377 = {}
      var377.minRobux = 50
      var377.maxRobux = 5000
      var372.allowedPriceRange = var377
      var367.premiumPricing = var372
      var41.TShirtAccessory = var367
      local var380 = {}
      local var381 = {}
      var381.minRobux = 50
      var381.maxRobux = 5000
      var380.allowedPriceRange = var381
      var380.marketplaceFeesPercentage = 70
      local var385 = {}
      local var387 = 25
      local var388 = 50
      local var389 = 75
      var385.allowedDiscountPercentages = {}
      local var390 = {}
      var390.minRobux = 50
      var390.maxRobux = 5000
      var385.allowedPriceRange = var390
      var380.premiumPricing = var385
      var41.ShirtAccessory = var380
      local var393 = {}
      local var394 = {}
      var394.minRobux = 50
      var394.maxRobux = 5000
      var393.allowedPriceRange = var394
      var393.marketplaceFeesPercentage = 70
      local var398 = {}
      local var400 = 25
      local var401 = 50
      local var402 = 75
      var398.allowedDiscountPercentages = {}
      local var403 = {}
      var403.minRobux = 50
      var403.maxRobux = 5000
      var398.allowedPriceRange = var403
      var393.premiumPricing = var398
      var41.PantsAccessory = var393
      local var406 = {}
      local var407 = {}
      var407.minRobux = 50
      var407.maxRobux = 5000
      var406.allowedPriceRange = var407
      var406.marketplaceFeesPercentage = 70
      local var411 = {}
      local var413 = 25
      local var414 = 50
      local var415 = 75
      var411.allowedDiscountPercentages = {}
      local var416 = {}
      var416.minRobux = 50
      var416.maxRobux = 5000
      var411.allowedPriceRange = var416
      var406.premiumPricing = var411
      var41.JacketAccessory = var406
      local var419 = {}
      local var420 = {}
      var420.minRobux = 50
      var420.maxRobux = 5000
      var419.allowedPriceRange = var420
      var419.marketplaceFeesPercentage = 70
      local var424 = {}
      local var426 = 25
      local var427 = 50
      local var428 = 75
      var424.allowedDiscountPercentages = {}
      local var429 = {}
      var429.minRobux = 50
      var429.maxRobux = 5000
      var424.allowedPriceRange = var429
      var419.premiumPricing = var424
      var41.SweaterAccessory = var419
      local var432 = {}
      local var433 = {}
      var433.minRobux = 50
      var433.maxRobux = 5000
      var432.allowedPriceRange = var433
      var432.marketplaceFeesPercentage = 70
      local var437 = {}
      local var439 = 25
      local var440 = 50
      local var441 = 75
      var437.allowedDiscountPercentages = {}
      local var442 = {}
      var442.minRobux = 50
      var442.maxRobux = 5000
      var437.allowedPriceRange = var442
      var432.premiumPricing = var437
      var41.ShortsAccessory = var432
      local var445 = {}
      local var446 = {}
      var446.minRobux = 50
      var446.maxRobux = 5000
      var445.allowedPriceRange = var446
      var445.marketplaceFeesPercentage = 70
      local var450 = {}
      local var452 = 25
      local var453 = 50
      local var454 = 75
      var450.allowedDiscountPercentages = {}
      local var455 = {}
      var455.minRobux = 50
      var455.maxRobux = 5000
      var450.allowedPriceRange = var455
      var445.premiumPricing = var450
      var41.LeftShoeAccessory = var445
      local var458 = {}
      local var459 = {}
      var459.minRobux = 50
      var459.maxRobux = 5000
      var458.allowedPriceRange = var459
      var458.marketplaceFeesPercentage = 70
      local var463 = {}
      local var465 = 25
      local var466 = 50
      local var467 = 75
      var463.allowedDiscountPercentages = {}
      local var468 = {}
      var468.minRobux = 50
      var468.maxRobux = 5000
      var463.allowedPriceRange = var468
      var458.premiumPricing = var463
      var41.RightShoeAccessory = var458
      local var471 = {}
      local var472 = {}
      var472.minRobux = 50
      var472.maxRobux = 5000
      var471.allowedPriceRange = var472
      var471.marketplaceFeesPercentage = 70
      local var476 = {}
      local var478 = 25
      local var479 = 50
      local var480 = 75
      var476.allowedDiscountPercentages = {}
      local var481 = {}
      var481.minRobux = 50
      var481.maxRobux = 5000
      var476.allowedPriceRange = var481
      var471.premiumPricing = var476
      var41.DressSkirtAccessory = var471
      if var1() then
         var41.Torso = var10
         var41.RightArm = var10
         var41.LeftArm = var10
         var41.LeftLeg = var10
         var41.RightLeg = var10
         var41.DynamicHead = var10
         var41.EyebrowAccessory = var10
         var41.EyelashAccessory = var10
      end
      var479 = var41
      var480 = var0
      local var116 = var4(var479, var480, {})
      arg1:dispatch()
      if var9() then
         local var0 = {}
         var0.isItemTagsFeatureEnabled = true
         local var1 = "SweaterAccessory"
         local var2 = "ShortsAccessory"
         local var3 = "LeftShoeAccessory"
         local var4 = "RightShoeAccessory"
         local var5 = "DressSkirtAccessory"
         local var521 = "Shirt"
         local var522 = "TShirt"
         local var523 = "Pants"
         var0.enabledAssetTypes = { 
            "Hat", 
            "HairAccessory", 
            "FaceAccessory", 
            "NeckAccessory", 
            "ShoulderAccessory", 
            "BackAccessory", 
            "FrontAccessory", 
            "WaistAccessory", 
            "TShirtAccessory", 
            "ShirtAccessory", 
            "PantsAccessory", 
            "JacketAccessory"
         }
         var0.maximumItemTagsPerItem = 5
         local var7 = var6(var0.isItemTagsFeatureEnabled, var0.enabledAssetTypes, var0.maximumItemTagsPerItem)
         arg1:dispatch()
      end
      if var8() then
         local var0 = var5(getDebugUgcBundleMetadata())
         arg1:dispatch()
      end
      return var2.resolve({})
   end
end
