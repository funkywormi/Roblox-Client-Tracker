return function()
	local ToastTextRoot = script.Parent
	local UIBloxRoot = ToastTextRoot.Parent
	local Roact = require(UIBloxRoot.Parent.Roact)
	local mockStyleComponent = require(UIBloxRoot.Utility.mockStyleComponent)
	local SlideFromTopToast = require(script.Parent.SlideFromTopToast)

	local createSlideFromTopToast = function(props)
		return mockStyleComponent({
			SlideFromTopToast = Roact.createElement(SlideFromTopToast, props)
		})
	end

	it("should throw on empty toastTitle", function()
		local element = createSlideFromTopToast({
			toastTitle = nil,
		})
		expect(function()
			Roact.mount(element)
		end).to.throw()
	end)

	it("should create and destroy without errors", function()
		local element = createSlideFromTopToast({
			toastTitle = "Test Title",
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors when render InformativeToast", function()
		local element = createSlideFromTopToast({
			iconImage = "rbxassetid://3792530835",
			toastSubtitle = "test test test",
			toastTitle = "Item on sale",
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors when render InteractiveToast", function()
		local element = createSlideFromTopToast({
			iconImage = "rbxassetid://3792530835",
			onActivated = function() end,
			toastSubtitle = "Tap to see more information",
			toastTitle = "System Outage",
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end