local GuiService = game:GetService("GuiService")

local CorePackages = script:FindFirstAncestor("CorePackages")
local success, scale = pcall(GuiService.GetResolutionScale, GuiService)

if not success or not CorePackages then
	scale = 1
end

-- Both this and the resolution scale should probably be provided to Foundation via some
-- prop or context, maybe even token, rather than us calling GuiService directly.
if GuiService:IsTenFootInterface() then
	scale = 3
end

local function getResolutionScale(): number
	return scale
end

return getResolutionScale
