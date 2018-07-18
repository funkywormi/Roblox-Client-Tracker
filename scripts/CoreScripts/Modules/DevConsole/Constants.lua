local Constants = {
	MainWindowInit = {
		Position = UDim2.new(.5, -486, .02, 16),
		Size = UDim2.new(0, 992, .96, -32),
		Transparency = .36,
		Padding = UDim.new(0, 5),
		MinSize = Vector2.new(400, 250),
	},
	FormFactor = {
		Large = 0,
		Middle = 1,
		Small = 2,
		Console = 3,
	},
	Color = {
		Black = Color3.fromRGB(0, 0, 0),
		BaseGray = Color3.fromRGB(30, 30, 30),
		TextBoxGray = Color3.fromRGB(45, 45, 45),
		ErrorRed = Color3.fromRGB(215, 90, 74),
		HighlightBlue = Color3.fromRGB(0, 162, 255),
		WarningYellow = Color3.fromRGB(255, 218, 68),
		SelectedBlue = Color3.fromRGB(50, 181, 255),
		UnselectedGray = Color3.fromRGB(78, 84, 96),
		-- HoverGreen = Color3.fromRGB(25, 78, 47 ), -- this is the color the Specs ask for but it's too dork IMO
		HoverGreen = Color3.fromRGB(85, 138, 107),
		TabUnselectedGray = Color3.fromRGB(102, 108, 119),
		BorderGray = Color3.fromRGB(184, 184, 184),
		Text = Color3.fromRGB(255, 255, 255),
		ActiveBox = Color3.fromRGB(63, 198, 121),
		InactiveBox = Color3.fromRGB(184, 184, 184),
	},
	Icon = {
		-- These values appear differently because of the discrepancy between design sizes and
		-- the engine sizes
		Info = "Info.png",
		Error = "Error.png",
		Warning = "Warning.png",
		Close = "Close.png",
		Sort = "Sort.png",
		Search = "Search.png",
		Maximize = "Maximize.png",
		Minimize = "Minimize.png",
	},
	Image = {
		Minimize = "rbxasset://textures/DevConsole/Minimize.png",
		Maximize = "rbxasset://textures/DevConsole/Maximize.png",
		Close = "rbxasset://textures/DevConsole/Close.png",
		Search = "rbxasset://textures/DevConsole/Search.png",
		Error = "rbxasset://textures/DevConsole/Error.png",
		Warning = "rbxasset://textures/DevConsole/Warning.png",
		Info = "rbxasset://textures/DevConsole/Info.png",
		Check = "rbxasset://textures/ui/LuaChat/icons/ic-check.png",
		Arrow = "rbxasset://textures/DevConsole/Arrow.png", -- we want rotate this for the over effects
		Arrow2 = "rbxasset://textures/TerrainTools/button_arrow_down.png", -- current use a down arrow because we can't rotate
	},
	Padding = {
		WindowPadding = 8,
		TabRow = 24,
		LinePadding = 2,
		MemoryIndent = 24,
	},
	-- the commented numbers here are the font sizes given by the design spec
	-- they were changed because the sizing did not match the the visuals in the design spec
	DefaultFontSize = {
		TopBar = 15, -- 18
		TabBar = 16, -- 20
		DropDownTabBar = 12, -- 14
		UtilBar = 12, -- 18 includes, the clientserver buttons, checkboxes, and the searchbox
		MainWindowHeader = 8,
		MainWindow = 10,
		CommandLine = 10,
	},
	Font = {
		TopBar = Enum.Font.Arial,
		TabBar = Enum.Font.Legacy,
		UtilBar = Enum.Font.Legacy,
		MainWindow = Enum.Font.Legacy,
	},
	GeneralFormatting = {
		LineWidth = 1,
		LineColor = Color3.new(1, 1, 1),
		ArrowWidth = 8,
		MainRowPadding = 8,
		LineGraphHeight = 200,
		HeaderFrameHeight = 20,
		EntryFrameHeight = 30,

		DropDownEntryHeight = 40,
		DropDownEntryWidth = 375,
		DropDownArrowHeight = 12,
	},
	TopBarFormatting = {
		BarTransparency = .64,
		FrameHeight = 30,
	},
	TabRowFormatting = {
		TabDropDownWidth = 144,
		FrameHeight = 40,
		HighlightHeight = 6,
		SelectedTextTransparency = 0,
		UnselectedTextTransparency = .5,
	},
	UtilityBarFormatting = {
		FrameHeight = 30,
		SmallFrameHeight = 24,
		SmallUtilPadding = 6, -- horizontal padding
		ClientServerButtonWidth = 100,
		ClientServerDropDownWidth = 74,
		CheckBoxHeight = 16,
		CheckBoxInnerPadding = 6
	},
	LogFormatting = {
		IconHeight = 14,
		TextFrameHeight = 20,
		TextFramePadding = 2,
		CommandLineHeight = 30,
		CommandLineIndent = 30,
	},
	EnumToMsgTypeName = {
		[Enum.MessageType.MessageOutput.Value] = "Output",
		[Enum.MessageType.MessageInfo.Value] = "Information",
		[Enum.MessageType.MessageWarning.Value] = "Warning",
		[Enum.MessageType.MessageError.Value] = "Error"
	},

	MsgTypeNamesOrdered = {
		"Output",
		"Information",
		"Warning",
		"Error"
	},

	MemoryFormatting = {
		ChartHeaderNames = {"Name", "Value MB"},
		ValueCellWidth = .2,
		DepthIndent = 24,
		CellPadding = 24,
		ValuePadding = 12,
		HeaderFrameHeight = 20,
		EntryFrameHeight = 30,
	},

	NetworkFormatting = {
		SummaryHeaderNames = {"RequestType", "RequestCount", "FailedCount", "AvgTime(ms)", "MinTime(ms)", "MaxTime(ms)"},
		HttpAnalyticsKeys = {"RequestType", "RequestCount", "FailedCount", "AverageTime", "MinTime", "MaxTime"},
		ChartHeaderNames = {"No.", "Method", "Status", "Time(ms).", "RequestType", "URL"},
		SummaryCellWidths = {120, 120, 120, 120, 120}, -- width of cells 2-6; cell 1 fills remainder
		ChartCellWidths = {72, 72, 72, 84, 140}, -- widths of cells 1-5; cell 6 is the filler
		CellPadding = 16,
		SummaryButtonHeight = 30,
		HeaderFrameHeight = 20,
		EntryFrameHeight = 30,
		ResponseWidthRatio = .8,
		ResponseStrHeight = 15,
		MinFrameWidth = 750,
	},

	ServerScriptsFormatting	 = {
		ChartHeaderNames = {"Name", "Activity (%)", "Rate (/s)"},
		ChartCellWidths = {200, 200}, -- width of cells 2-3; cell 1 fills remainder
		HeaderFrameHeight = 20,
		EntryFrameHeight = 30,
		CellPadding = 16,
		ActivityBoxWidth = 12,
		ActivityBoxPadding = 14,
	},

	DataStoresFormatting = {
		ChartHeaderNames = {"Name", "Value"},
		ValueCellWidth = 200,
		CellPadding = 16,
		ExpandArrowPadding = 12,
		HeaderFrameHeight = 20,
		EntryFrameHeight = 30,
	},

	ServerStatsFormatting = {
		ChartHeaderNames = {"Name", "Value"},
		ValueCellWidth = .2,
		CellPadding = 14,
		ExpandArrowPadding = 12,
		HeaderFrameHeight = 20,
		EntryFrameHeight = 30,
	},

	ActionBindingsFormatting = {
		ChartHeaderNames = {"Name", "Priority", "Security", "Action Name", "Input Types"},
		ChartCellWidths = {80, 100, 185}, -- width of cells 2-4; cell 1 fills remainder
		CellPadding = 16,
		ExpandArrowPadding = 12,
		HeaderFrameHeight = 20,
		EntryFrameHeight = 30,
		MinFrameWidth = 654,
	},

	ServerJobsFormatting = {
		ChartHeaderNames = {"Name", "DutyCycle(%)", "Steps Per Sec (/s)", "Step Time (ms)"},
		ValueCellWidth = {.31, .23, .23, .23}, -- width of cells 2-4; cell 1 fills remainder
		CellPadding = 16,
		ExpandArrowPadding = 12,
		HeaderFrameHeight = 20,
		EntryFrameHeight = 30,
		MinFrameWidth = 654,
	},

	Graph = {
		PointWidth = 4,
		PointOffset = 2, -- should be 1/2 pointwidth
		Padding = 0.15,
		Scale = 0.7, -- should be 1 - (2 * Padding)
		InnerPaddingY = 0.1,
		InnerScaleY = 0.8, -- should be 1 - (2 * innerPaddingY)
		TextPadding = 10,
	}
}

return Constants