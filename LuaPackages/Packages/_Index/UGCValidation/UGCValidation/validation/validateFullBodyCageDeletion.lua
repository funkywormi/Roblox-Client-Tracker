local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent
local Types = require(root.util.Types)

local Analytics = require(root.Analytics)

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)

local function validateFullBodyCageDeletion(
	editableMesh: EditableMesh,
	meshType: string,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local isServer = validationContext.isServer

	local success, result = pcall(function()
		return UGCValidationService:ValidateEditableMeshFullBodyCageDeletion(editableMesh)
	end)

	if not success then
		if nil ~= isServer and isServer then
			-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
			-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
			-- which would mean the asset failed validation
			error("Failed to execute validateFullBodyCageDeletion check")
		end
		Analytics.reportFailure(Analytics.ErrorType.validateFullBodyCageDeletion_FailedToExecute)
		return false, { "Failed to execute validateFullBodyCageDeletion check" }
	end

	if not result then
		Analytics.reportFailure(Analytics.ErrorType.validateFullBodyCageDeletion_GeometryRemoved)
		return false,
			{ string.format("Some %s geometry has been removed. This will result in layering issues.", meshType) }
	end

	return true
end

local function DEPRECATED_validateFullBodyCageDeletion(
	meshId: string,
	meshType: string,
	isServer: boolean?
): (boolean, { string }?)
	local success, result = pcall(function()
		return UGCValidationService:ValidateFullBodyCageDeletion(meshId)
	end)

	if not success then
		if nil ~= isServer and isServer then
			-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
			-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
			-- which would mean the asset failed validation
			error("Failed to execute validateFullBodyCageDeletion check")
		end
		Analytics.reportFailure(Analytics.ErrorType.validateFullBodyCageDeletion_FailedToExecute)
		return false, { "Failed to execute validateFullBodyCageDeletion check" }
	end

	if not result then
		Analytics.reportFailure(Analytics.ErrorType.validateFullBodyCageDeletion_GeometryRemoved)
		return false,
			{ string.format("Some %s geometry has been removed. This will result in layering issues.", meshType) }
	end

	return true
end

if getFFlagUseUGCValidationContext() then
	return validateFullBodyCageDeletion :: any
else
	return DEPRECATED_validateFullBodyCageDeletion :: any
end
