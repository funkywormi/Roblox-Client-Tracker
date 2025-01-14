local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)

local ScrollingFrame = require(script.Parent.ScrollingFrame)

local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local withDefaults = require(Foundation.Utility.withDefaults)

local useStyleTags = require(Foundation.Providers.Style.useStyleTags)

local ScrollBarVisibility = require(Foundation.Enums.ScrollBarVisibility)
type ScrollBarVisibility = ScrollBarVisibility.ScrollBarVisibility

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState
type StateChangedCallback = Types.StateChangedCallback
type Bindable<T> = Types.Bindable<T>
type ListLayout = Types.ListLayout
type GuiObjectProps = Types.GuiObjectProps
type CommonProps = Types.CommonProps

export type Scroll = {
	AutomaticCanvasSize: Bindable<Enum.AutomaticSize>?,
	CanvasSize: Bindable<UDim2>?,
	ScrollingDirection: Bindable<Enum.ScrollingDirection>?,
	scrollBarVisibility: Bindable<ScrollBarVisibility>?,
}

export type ScrollViewProps = {
	layout: ListLayout?,
	scroll: Scroll?,
} & GuiObjectProps & CommonProps

local defaultProps = {
	backgroundStyle = {
		Transparency = 1,
	},
	layout = {
		SortOrder = Enum.SortOrder.LayoutOrder,
	} :: ListLayout,
	scroll = {
		scrollBarVisibility = ScrollBarVisibility.Auto,
	} :: Scroll,
	AutoLocalize = false,
	BorderSizePixel = 0,
	isDisabled = false,
}

local function ScrollView(scrollViewProps: ScrollViewProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(scrollViewProps, defaultProps)
	local tag = useStyleTags(props.tag)

	local controlState, setControlState = React.useState(ControlState.Initialize :: ControlState)

	local function onStateChanged(state: ControlState)
		setControlState(state)
		if props.onStateChanged ~= nil then
			props.onStateChanged(state)
		end
	end

	local viewProps: any = Cryo.Dictionary.union(props, {
		onStateChanged = onStateChanged,
		-- Special check on props.onStateChanged since we don't want state layer on all scrolling frames
		stateLayer = if props.onStateChanged or props.onActivated then props.stateLayer else { affordance = "None" },
		selection = {
			-- We don't want to show selection cursor on ScrollView because ScrollingFrame already has it
			Selectable = false,
		},

		ref = ref,
		[React.Tag] = tag,
	})

	viewProps.scroll = nil
	viewProps.layout = nil

	return React.createElement(View, viewProps, {
		ScrollingFrame = React.createElement(
			ScrollingFrame,
			{
				controlState = controlState,
				scrollBarVisibility = props.scroll.scrollBarVisibility,

				-- Scrolling props
				AutomaticCanvasSize = props.scroll.AutomaticCanvasSize,
				CanvasSize = props.scroll.CanvasSize,
				ScrollingDirection = props.scroll.ScrollingDirection,
			},
			if props.children
					and props.layout ~= nil
					and props.layout.FillDirection ~= nil
				then Cryo.Dictionary.union({
					ListLayout = React.createElement("UIListLayout", {
						FillDirection = props.layout.FillDirection,
						ItemLineAlignment = props.layout.ItemLineAlignment,
						HorizontalAlignment = props.layout.HorizontalAlignment,
						HorizontalFlex = props.layout.HorizontalFlex,
						VerticalAlignment = props.layout.VerticalAlignment,
						VerticalFlex = props.layout.VerticalFlex,
						Padding = props.layout.Padding,
						SortOrder = props.layout.SortOrder,
						Wraps = props.layout.Wraps,
					}),
				}, props.children)
				else props.children
		),
	})
end

return React.memo(React.forwardRef(ScrollView))
