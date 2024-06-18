-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
local var1 = {}
local var2 = {}
var2.Name = "R15MigratorHasAdapter"
var2.Mask = 1
var1.AdapterTagging = var2
local var5 = {}
var5.Name = "R15MigratorUnconvertedCharacter"
var5.Mask = 2
var1.CharacterTagging = var5
local var8 = {}
var8.Name = "R15MigratorUnconvertedAnimation"
var8.Mask = 4
var1.AnimationTagging = var8
local var11 = {}
var11.Name = "R15MigratorUnconvertedScript"
var11.Mask = 8
var1.ScriptTagging = var11
var0.PublishTags = var1
local var14 = {}
var14.CharactersConvertedToR15Tag = "R15MigratorCharactersConvertedToR15"
var0.NonePublishTags = var14
var0.AttributePrefix = "RBX_R15Migrator_"
var0.PreviewSpeeds = { 0.25, 0.5, 0.75, 1, 1.25, 1.5, 1.75, 2 }
local var26 = {}
var26.TEXT_COLUMN_INDEX = 1
var26.STATUS_COLUMN_INDEX = 2
var0.StatusTableData = var26
var0.CrossPluginCommunicationName = "R15Migrator"
local var30 = {}
var30.Open = "Open"
var30.Published = "Published"
var0.CrossPluginCommunicationInstructions = var30
local var9 = {}
var9.TempId = var0.AttributePrefix ... "R15MigratorTempId"
var9.OriginalId = var0.AttributePrefix ... "OriginalId"
var9.Name = var0.AttributePrefix ... "name"
var9.Adapted = var0.AttributePrefix ... "Adapted"
var0.Attributes = var9
return var0
