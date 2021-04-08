local FFlagToolboxUseDevFrameworkDialogs = game:GetFastFlag("ToolboxUseDevFrameworkDialogs")

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs

local UILibrary = require(Libs.UILibrary)
local createTheme = UILibrary.createTheme
local StudioStyle = UILibrary.Studio.Style

local Framework = require(Libs.Framework)
local ContextServices = Framework.ContextServices
local StudioUI = Framework.StudioUI
local StudioFrameworkStyles = StudioUI.StudioFrameworkStyles

local Theme = ContextServices.Theme
local Stylizer = ContextServices.Stylizer

local Util = Plugin.Core.Util
local Colors = require(Util.Colors)
local isCli = require(Util.isCli)
local TestHelpers = require(Util.Test.TestHelpers)
local THEME_REFACTOR = Framework.Util.RefactorFlags.THEME_REFACTOR

local FrameworkStyle = Framework.Style
local StudioTheme = FrameworkStyle.Themes.StudioTheme
local StyleKey = FrameworkStyle.StyleKey

local makeTheme

if THEME_REFACTOR then
	local function getUILibraryTheme(styleRoot, overrides)
		local theme = settings().Studio.Theme

		local styleGuide = StudioStyle.new(function(...)
			return theme:GetColor(...)
		end, Enum.StudioStyleGuideColor, Enum.StudioStyleGuideModifier)

		local styleKeysTable = Stylizer:getStyleKeysTable(styleRoot)
		overrides = Stylizer:convertStyleKeys(overrides or {}, nil, nil, styleKeysTable)

		return createTheme(styleGuide, overrides)
	end

	makeTheme = function(uiLibraryDeprecatedTheme)
		local styleRoot
		if isCli() then
			styleRoot = StudioTheme.mock()
		else
			styleRoot = StudioTheme.new()
		end

		styleRoot:extend({
			-- TODO: Move colors from ToolboxTheme to here
			backgroundColor = StyleKey.InputFieldBackground,
			progressBarColor = Colors.BLUE_PRIMARY,

			purchaseDialog = FFlagToolboxUseDevFrameworkDialogs and {
				promptText = StyleKey.MainText,
				balanceText = StyleKey.DimmedText,
			} or nil,
		})

		if isCli() then
			function styleRoot:getUILibraryTheme()
				local styleGuide = StudioStyle.new(
					function(...)
						return Color3.new()
					end,
					TestHelpers.createMockStudioStyleGuideColor(), 
					TestHelpers.createMockStudioStyleGuideModifier()
				)
		
				return createTheme(styleGuide, {})
			end
		else
			function styleRoot:getUILibraryTheme()
				return getUILibraryTheme(styleRoot, uiLibraryDeprecatedTheme)
			end
		end

		return styleRoot
	end

else
	local function getUILibraryTheme(overrides)
		local theme = settings().Studio.Theme

		local c = Enum.StudioStyleGuideColor
		local m = Enum.StudioStyleGuideModifier

		local styleGuide = StudioStyle.new(function(...)
			return theme:GetColor(...)
		end, c, m)

		return createTheme(styleGuide, overrides)
	end

	local function createValues(theme, getColor)
		local c = Enum.StudioStyleGuideColor

		return {
			Plugin = {
				backgroundColor = theme:GetColor(c.InputFieldBackground),
				progressBarColor = Colors.BLUE_PRIMARY,
				purchaseDialog = FFlagToolboxUseDevFrameworkDialogs and {
					promptText = theme:GetColor(c.MainText),
					balanceText = theme:GetColor(c.DimmedText),
				} or nil,
			},
			Framework = StudioFrameworkStyles.new(theme, getColor),
		}
	end

	makeTheme = function(uiLibraryDeprecatedTheme)
		if isCli() then
			local function GetColor(_, _)
				return Color3.new()
			end
			local mockInnerTheme = StudioTheme.mock()
			mockInnerTheme.GetColor = GetColor

			local theme = Theme.mock(function(theme, getColor)
				local studioFrameworkStyles = StudioFrameworkStyles.new(theme, getColor)
				return {
					Plugin = {},
					Framework = studioFrameworkStyles,
				}
			end, function()
				return mockInnerTheme
			end)
			function theme:getUILibraryTheme()
				local styleGuide = StudioStyle.new(
					function(...)
						return mockInnerTheme:GetColor(...)
					end, 
					TestHelpers.createMockStudioStyleGuideColor(), 
					TestHelpers.createMockStudioStyleGuideModifier()
				)
		
				return createTheme(styleGuide, {})
			end
			return theme
		else
			local theme = Theme.new(createValues)
			function theme:getUILibraryTheme()
				return getUILibraryTheme(uiLibraryDeprecatedTheme)
			end

			return theme
		end
	end
end

return makeTheme