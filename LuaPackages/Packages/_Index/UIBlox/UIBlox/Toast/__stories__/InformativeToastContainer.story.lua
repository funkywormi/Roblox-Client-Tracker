local ToastRoot = script.Parent.Parent
local UIBloxRoot = ToastRoot.Parent
local Roact = require(UIBloxRoot.Parent.Roact)
local Images = require(UIBloxRoot.ImageSet.Images)
local StyleProvider = require(UIBloxRoot.Style.StyleProvider)
local UIBloxStyle = require(UIBloxRoot.Parent.UIBloxResources.UIBloxStyle)
local InformativeToast = require(ToastRoot.InformativeToast)
local ToastContainer = require(ToastRoot.ToastContainer)

local function InformativeToastContainer()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		ToastContainer = Roact.createElement(ToastContainer, {
			anchorPoint = Vector2.new(0.5, 0),
			iconImage = Images["toast/iconAlert"],
			position = UDim2.new(0.5, 0, 0, 20),
			renderToast = function(props)
				return Roact.createElement(InformativeToast, props)
			end,
			toastSubtitle = "Some details here",
			toastTitle = "Title Case",
		}),
	})
end

return function(target)
	local styleProvider = Roact.createElement(StyleProvider, {
		style = UIBloxStyle,
	}, {
		Roact.createElement(InformativeToastContainer)
	})
	local handle = Roact.mount(styleProvider, target, "InformativeToast")
	return function()
		Roact.unmount(handle)
	end
end