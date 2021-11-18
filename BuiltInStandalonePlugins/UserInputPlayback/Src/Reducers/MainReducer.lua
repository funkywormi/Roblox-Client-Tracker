local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local RecordTabReducer = require(Plugin.Src.Reducers.RecordTabReducer)
local PlaybackTabReducer = require(Plugin.Src.Reducers.PlaybackTabReducer)
local EventTypeEnabledReducer = require(Plugin.Src.Reducers.EventTypeEnabledReducer)

local MainReducer = Rodux.combineReducers({
	recordTab = RecordTabReducer,
	recordTabFilter = EventTypeEnabledReducer.makeReducerForName("recordTabFilter"),
	playbackTab = PlaybackTabReducer,
	playbackTabFilter = EventTypeEnabledReducer.makeReducerForName("playbackTabFilter"),
})

return MainReducer