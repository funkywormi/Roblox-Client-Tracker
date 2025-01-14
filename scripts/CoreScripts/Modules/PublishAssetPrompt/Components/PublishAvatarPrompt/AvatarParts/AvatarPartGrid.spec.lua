return function()
	local CorePackages = game:GetService("CorePackages")
	local Players = game:GetService("Players")

	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)

	local AvatarPartGrid = require(script.Parent.AvatarPartGrid)

	describe("AvatarPartGrid", function()
		it("should create and destroy without errors", function()
			-- create a new humanoid model
			local humanoidModel = Players:CreateHumanoidModelFromDescription(
				Instance.new("HumanoidDescription"),
				Enum.HumanoidRigType.R15
			)
			local function createDummyAccessory(name: string)
				local accessory = Instance.new("Part")
				accessory.Name = name
				local handle = Instance.new("MeshPart")
				handle.Name = "Handle"
				handle.Parent = accessory
				return accessory
			end

			local eyebrows = createDummyAccessory("Eyebrows")
			local eyelashes = createDummyAccessory("Eyelashes")

			eyebrows.Parent = humanoidModel
			eyelashes.Parent = humanoidModel

			local element = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				AvatarPartGrid = Roact.createElement(AvatarPartGrid, {
					humanoidModel = humanoidModel,
					name = "",
					screenSize = Vector2.new(100, 100),
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
