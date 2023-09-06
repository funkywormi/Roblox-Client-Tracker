--!nonstrict

local root = script.Parent.Parent

local getEngineFeatureEngineUGCValidateMeshTriangleArea =
	require(root.flags.getEngineFeatureEngineUGCValidateMeshTriangleArea)

local UGCValidationService = game:GetService("UGCValidationService")

local function validateMeshTriangleArea(
	instance: Instance,
	fieldName: string,
	isServer: boolean
): (boolean, { string }?)
	local contentId = instance[fieldName]

	if getEngineFeatureEngineUGCValidateMeshTriangleArea() then
		local success, result = pcall(function()
			return UGCValidationService:validateMeshTriangleArea(contentId)
		end)

		if not success then
			if isServer then
				error("Failed to load mesh data")
			end
			return false, { "Failed to load mesh data" }
		end

		if not result then
			return false,
				{
					string.format(
						"%s.%s ( %s ) contained an invalid triangle which contained no area in 3D space",
						instance:GetFullName(),
						fieldName,
						contentId
					),
				}
		end
	end

	return true
end

return validateMeshTriangleArea
