--!strict

--[[
	get the min and max bounds of the mesh
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Types = require(root.util.Types)

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)

local calculateMinMax = require(root.util.calculateMinMax)

local function getVerts(editableMesh: EditableMesh, isServer: boolean?): (boolean, { string }?, any?)
	local success, verts = pcall(function()
		return UGCValidationService:GetEditableMeshVerts(editableMesh)
	end)

	if not success then
		local errorMsg = "Failed to read mesh: " .. editableMesh.Name
		if isServer then
			-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
			-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
			-- which would mean the asset failed validation
			error(errorMsg)
		end
		return false, { errorMsg }
	end
	return true, nil, verts
end

local function DEPRECATED_getVerts(id: string, isServer: boolean?): (boolean, { string }?, any?)
	local success, verts = pcall(function()
		return UGCValidationService:GetMeshVerts(id)
	end)

	if not success then
		local errorMsg = "Failed to read mesh: " .. tostring(id)
		if isServer then
			-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
			-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
			-- which would mean the asset failed validation
			error(errorMsg)
		end
		return false, { errorMsg }
	end
	return true, nil, verts
end

local function getBoundsInfo(verts: any, scale: Vector3?): (Vector3?, Vector3?)
	local min = nil
	local max = nil

	for _, vertPos in pairs(verts) do
		local scaledVert = if scale then vertPos * scale else vertPos
		min, max = calculateMinMax(min, max, scaledVert, scaledVert)
	end
	return min, max
end

local function getMeshMinMax(
	editableMesh: EditableMesh,
	scale: Vector3?,
	validationContext: Types.ValidationContext
): (boolean, { string }?, Vector3?, Vector3?)
	local isServer = validationContext.isServer
	local success, failureReasons, verts = getVerts(editableMesh, isServer)
	if not success then
		return success, failureReasons
	end

	if not verts or 0 == #verts then
		return false, { "Mesh: " .. editableMesh:GetAttribute("SourceFullName") .. " contains no verts" }
	end

	local meshMin, meshMax = getBoundsInfo(verts, scale)
	return true, nil, meshMin :: Vector3, meshMax :: Vector3
end

local function DEPRECATED_getMeshMinMax(
	meshId: string,
	isServer: boolean?,
	scale: Vector3?
): (boolean, { string }?, Vector3?, Vector3?)
	local success, failureReasons, verts = DEPRECATED_getVerts(meshId, isServer)
	if not success then
		return success, failureReasons
	end

	if not verts or 0 == #verts then
		return false, { "Mesh: " .. tostring(meshId) .. " contains no verts" }
	end

	local meshMin, meshMax = getBoundsInfo(verts, scale)
	return true, nil, meshMin :: Vector3, meshMax :: Vector3
end

if getFFlagUseUGCValidationContext() then
	return getMeshMinMax :: any
else
	return DEPRECATED_getMeshMinMax :: any
end
