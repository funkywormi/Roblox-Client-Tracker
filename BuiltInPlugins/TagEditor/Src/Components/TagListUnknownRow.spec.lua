local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local mockContext = require(Plugin.Src.Util.mockContext)

local join = Framework.Dash.join

local TagListUnknownRow = require(script.Parent.TagListUnknownRow)

return function()
	local function createTestElement(props: {}?)
		local componentProps: TagListUnknownRow.Props = join({
			-- If there are any props required for this component, add defaults for them here
			TagName = "",
		}, props or {})

		return mockContext({
			TagListUnknownRow = Roact.createElement(TagListUnknownRow, componentProps)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = createTestElement()
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render correctly with optional props", function ()
		-- New Plugin Setup: Test each prop your component accepts.
		-- You can do this with one or many individual tests.
	end)
end
