--[[
	Given a tick, move the scrub bar to the nearest DisplayFrame
]]

local Plugin = script.Parent.Parent.Parent
local StepAnimation = require(Plugin.Src.Thunks.Playback.StepAnimation)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)

return function(tick)
	return function(store)
		local state = store:getState()

		local frameRate = state.Status.FrameRate
		local snapTick = KeyframeUtils.getNearestFrame(tick, frameRate)

		store:dispatch(StepAnimation(snapTick))
	end
end