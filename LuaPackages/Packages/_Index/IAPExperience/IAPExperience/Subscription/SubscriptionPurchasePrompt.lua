local SubscriptionPurchasePromptRoot = script.Parent
local IAPExperienceRoot = SubscriptionPurchasePromptRoot.Parent
local Packages = IAPExperienceRoot.Parent

local TextService = game:GetService("TextService")

local React = require(Packages.Parent.Parent.React)

local UIBlox = require(Packages.UIBlox)
local PartialPageModal = UIBlox.App.Dialog.Modal.PartialPageModal
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local withStyle = UIBlox.Style.withStyle

local MultiTextLocalizer = require(IAPExperienceRoot.Locale.MultiTextLocalizer)
local SubscriptionTitle = require(IAPExperienceRoot.Subscriptions.SubscriptionTitle)

local CONTENT_PADDING = 24
local CONDENSED_CONTENT_PADDING = 12
local ICON_SIZE = 96
local CONDENSED_ICON_SIZE = 40
local MAXIMUM_DESCRIPTION_HEIGHT = 200
local BUTTON_HEIGHT = 48

type Props = {
	name: string,
	appStoreName: string,
	displayPrice: string,
	period: string,
	disclaimerText: string,
	description: string,
	itemIcon: any,

	isTestingMode: boolean,

	screenSize: Vector,

	acceptControllerIcon: { [string]: any? },

	purchaseSubscriptionActivated: () -> any,
	cancelPurchaseActivated: () -> any,
}

local function generateFooter(disclaimerText, disclaimerHeight, fonts, theme)
	return React.createElement("Frame", {
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, 0, 0, 16),
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		LayoutOrder = 2,
		Size = UDim2.new(1, -48, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
	}, {
		DisclaimerText = React.createElement("TextLabel", {
			LayoutOrder = 1,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, disclaimerHeight),
			Font = fonts.Footer.Font,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextWrapped = true,
			Text = disclaimerText,
			TextSize = 12,
			TextColor3 = theme.TextDefault.Color,
		}),
	})
end

local function generatePromptText(props, fonts, theme, middleContentSize, descriptionHeightChanged)
	return React.createElement("TextLabel", {
		BackgroundTransparency = 1,
		Size = UDim2.new(0, middleContentSize, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		TextXAlignment = Enum.TextXAlignment.Left,
		Font = fonts.Body.Font,
		Text = props.description,
		TextSize = 16,
		TextWrapped = true,
		TextColor3 = theme.TextDefault.Color,
		TextTransparency = theme.TextDefault.Transparency,
		[React.Change.AbsoluteSize] = function(rbx)
			local newHeight = TextService:GetTextSize(
				rbx.Text,
				rbx.TextSize,
				rbx.Font,
				Vector2.new(rbx.AbsoluteSize.X, 999999) -- math.max does not work, returns font size.
			).Y
			descriptionHeightChanged(newHeight)
		end,
	})
end

local function SubscriptionPurchasePrompt(props)
	local descriptionHeight, setDescriptionHeight = React.useState(0)
	local function descriptionHeightChanged(newHeight)
		setDescriptionHeight(newHeight)
	end
	local isCondensed, setIsCondensed = React.useState(false)
	return React.createElement(MultiTextLocalizer, {
		keys = {
			titleText = { key = "IAPExperience.SubscriptionPurchasePrompt.Label.GetSubscription" },
			subscribe = { key = "IAPExperience.PremiumUpsell.Action.Subscribe" },
			testDisclaimerText = { key = "IAPExperience.SubscriptionPurchasePrompt.Label.TestFlowDisclaimer" },
		},
		render = function(locMap)
			local disclaimerText = props.disclaimerText
			if props.isTestingMode then
				disclaimerText = locMap.testDisclaimerText
			end
			return withStyle(function(stylePalette)
				local theme = stylePalette.Theme
				local fonts = stylePalette.Font
				local middleContentSize = PartialPageModal:getMiddleContentWidth(props.screenSize.X)
				local disclaimerHeight = TextService:GetTextSize(
					props.disclaimerText,
					12,
					fonts.Footer.Font,
					Vector2.new(middleContentSize, 10000)
				).Y + 2
				return React.createElement(PartialPageModal, {
					title = locMap.titleText,
					screenSize = props.screenSize,
					contentPadding = UDim.new(0, CONTENT_PADDING and isCondensed or CONDENSED_CONTENT_PADDING),
					buttonStackProps = {
						buttons = {
							{
								buttonType = ButtonType.PrimarySystem,
								props = {
									onActivated = props.purchaseSubscriptionActivated,
									text = locMap.subscribe,
									inputIcon = props.acceptControllerIcon,
								},
							},
						},
						buttonHeight = BUTTON_HEIGHT,
					},
					onCloseClicked = props.cancelPurchaseActivated,
					footerContent = function()
						return generateFooter(disclaimerText, disclaimerHeight, fonts, theme)
					end,
				}, {
					React.createElement("Frame", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 0),
						AutomaticSize = Enum.AutomaticSize.Y,
						[React.Change.AbsoluteSize] = function(rbx)
							if isCondensed then
								setIsCondensed(
									props.screenSize.Y
										< rbx.AbsoluteSize.Y
											+ 120
											+ ICON_SIZE
											- CONDENSED_ICON_SIZE
											+ (CONTENT_PADDING - CONDENSED_CONTENT_PADDING) * 2
								)
							else
								setIsCondensed(props.screenSize.Y < rbx.AbsoluteSize.Y + 120)
							end
						end,
					}, {
						Padding = React.createElement("UIPadding", {
							PaddingTop = UDim.new(0, CONTENT_PADDING and isCondensed or CONDENSED_CONTENT_PADDING),
							PaddingBottom = UDim.new(0, CONTENT_PADDING and isCondensed or CONDENSED_CONTENT_PADDING),
						}),
						Layout = React.createElement("UIListLayout", {
							SortOrder = Enum.SortOrder.LayoutOrder,
							HorizontalAlignment = Enum.HorizontalAlignment.Center,
							Padding = UDim.new(0, 8),
						}),
						Icon = React.createElement(ImageSetLabel, {
							LayoutOrder = 1,
							BackgroundTransparency = 1,
							Size = UDim2.new(1, 0, 0, isCondensed and CONDENSED_ICON_SIZE or ICON_SIZE),
							ScaleType = Enum.ScaleType.Fit,
							Image = props.itemIcon,
						}),
						SubscriptionInfo = React.createElement(SubscriptionTitle, {
							appStoreName = props.appStoreName,
							name = props.name,
							displayPrice = props.displayPrice,
							period = props.period,
							layoutOrder = 2,
						}),
						PromptScroll = React.createElement("ScrollingFrame", {
							BackgroundTransparency = 1,
							LayoutOrder = 3,
							Size = UDim2.new(1, 0, 0, math.min(descriptionHeight, MAXIMUM_DESCRIPTION_HEIGHT)),
							BorderSizePixel = 0,
							ZIndex = 2,
							ScrollingEnabled = descriptionHeight > MAXIMUM_DESCRIPTION_HEIGHT,
							ScrollBarThickness = descriptionHeight > MAXIMUM_DESCRIPTION_HEIGHT and 5,
							ScrollingDirection = Enum.ScrollingDirection.Y,
							Selectable = false,
							CanvasSize = UDim2.new(1, 0, 0, descriptionHeight),
						}, { generatePromptText(props, fonts, theme, middleContentSize, descriptionHeightChanged) }),
					}),
				})
			end)
		end,
	})
end

return SubscriptionPurchasePrompt
