local root = script.Parent.Parent

local createMeshPartAccessorySchema = require(root.util.createMeshPartAccessorySchema)
local validateSingleInstance = require(root.validation.validateSingleInstance)
local validateInstanceTree = require(root.validation.validateInstanceTree)
local validateLegacyAccessoryMeshPartAssetFormatMatch =
	require(root.validation.validateLegacyAccessoryMeshPartAssetFormatMatch)
local validateAccessoryName = require(root.validation.validateAccessoryName)

local getFFlagUGCValidationNameCheck = require(root.flags.getFFlagUGCValidationNameCheck)

local function validateLegacyAccessoryMeshPartAssetFormat(
	instances: { Instance },
	specialMeshAssetFormatAccessory: Instance,
	_assetTypeEnum: Enum.AssetType,
	isServer: boolean
): (boolean, { string }?)
	local success: boolean, reasons: { string }?

	success, reasons = validateSingleInstance(instances)
	if not success then
		return false, reasons
	end

	local meshPartAssetFormatAccessory = instances[1]

	-- we can assume these exist from checks in UGCValidationService.validate()
	local specialMeshAssetFormatHandle = specialMeshAssetFormatAccessory:FindFirstChild("Handle") :: Part
	local specialMeshAssetFormatAttachment =
		specialMeshAssetFormatHandle:FindFirstChildOfClass("Attachment") :: Attachment
	local schema = createMeshPartAccessorySchema(specialMeshAssetFormatAttachment.Name)

	success, reasons = validateInstanceTree(schema, meshPartAssetFormatAccessory)
	if not success then
		return false, reasons
	end

	if getFFlagUGCValidationNameCheck() and isServer then
		success, reasons = validateAccessoryName(meshPartAssetFormatAccessory)
		if not success then
			return false, reasons
		end
	end

	success, reasons =
		validateLegacyAccessoryMeshPartAssetFormatMatch(meshPartAssetFormatAccessory, specialMeshAssetFormatAccessory)
	if not success then
		return false, reasons
	end

	return true
end

return validateLegacyAccessoryMeshPartAssetFormat
