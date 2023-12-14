-- Generated with Unluau (https://github.com/valencefun/unluau)
return "local userInputService = game:GetService(\"UserInputService\")\n\nlocal delayBeforeStart = 3\nlocal delayBetweenSwitching = 1\n\nlocal AnimationInfo = {\n\tdisplayName = nil,\n\tfaceAnimationAssetId = \"-1\",\n\tbodyAnimationAssetId = \"-1\",\n}\n\nAnimationInfo.__index = AnimationInfo\n\nfunction AnimationInfo.new(tbl)\n\tlocal newListItemInfo = tbl or {}\n\tsetmetatable(newListItemInfo, AnimationInfo)\n\treturn newListItemInfo\nend\n\nlocal animationsListMoods = { -- moods expressions:\n\tAnimationInfo.new({\n\t\tdisplayName = \"mood_neutral\",\n\t\tfaceAnimationAssetId = \"7715096377\",\n\t\tbodyAnimationAssetId = \"3333331310\"\n\t}), AnimationInfo.new({\n\t\tdisplayName = \"mood_1\",\n\t\tfaceAnimationAssetId = \"7715102557\",\n\t\tbodyAnimationAssetId = \"-1\"\n\t}), AnimationInfo.new({\n\t\tdisplayName = \"mood_2\",\n\t\tfaceAnimationAssetId = \"7715106138\",\n\t\tbodyAnimationAssetId = \"-1\"\n\t}), AnimationInfo.new({\n\t\tdisplayName = \"mood_3\",\n\t\tfaceAnimationAssetId = \"7715109713\",\n\t\tbodyAnimationAssetId = \"-1\"\n\t}), AnimationInfo.new({\n\t\tdisplayName = \"mood_4\",\n\t\tfaceAnimationAssetId = \"7715114351\",\n\t\tbodyAnimationAssetId = \"-1\"\n\t}), AnimationInfo.new({\n\t\tdisplayName = \"mood_5\",\n\t\tfaceAnimationAssetId = \"7715119645\",\n\t\tbodyAnimationAssetId = \"-1\"\n\t}), AnimationInfo.new({\n\t\tdisplayName = \"mood_6\",\n\t\tfaceAnimationAssetId = \"7715122816\",\n\t\tbodyAnimationAssetId = \"-1\"\n\t}), AnimationInfo.new({\n\t\tdisplayName = \"mood_8\",\n\t\tfaceAnimationAssetId = \"7715129652\",\n\t\tbodyAnimationAssetId = \"-1\"\n\t}), AnimationInfo.new({\n\t\tdisplayName = \"mood_9\",\n\t\tfaceAnimationAssetId = \"7715137283\",\n\t\tbodyAnimationAssetId = \"-1\"\n\t}), AnimationInfo.new({\n\t\tdisplayName = \"mood_11\",\n\t\tfaceAnimationAssetId = \"7715145252\",\n\t\tbodyAnimationAssetId = \"-1\"\n\t}), AnimationInfo.new({\n\t\tdisplayName = \"mood_12\",\n\t\tfaceAnimationAssetId = \"7715148763\",\n\t\tbodyAnimationAssetId = \"-1\"\n\t}), AnimationInfo.new({\n\t\tdisplayName = \"mood_13\",\n\t\tfaceAnimationAssetId = \"7715155442\",\n\t\tbodyAnimationAssetId = \"-1\"\n\t}), AnimationInfo.new({\n\t\tdisplayName = \"mood_15\",\n\t\tfaceAnimationAssetId = \"7715163042\",\n\t\tbodyAnimationAssetId = \"-1\"\n\t}), AnimationInfo.new({\n\t\tdisplayName = \"mood_16\",\n\t\tfaceAnimationAssetId = \"7715166020\",\n\t\tbodyAnimationAssetId = \"-1\"\n\t}), AnimationInfo.new({\n\t\tdisplayName = \"mood_17\",\n\t\tfaceAnimationAssetId = \"7715171634\",\n\t\tbodyAnimationAssetId = \"-1\"\n\t}), AnimationInfo.new({\n\t\tdisplayName = \"mood_18\",\n\t\tfaceAnimationAssetId = \"7715175106\",\n\t\tbodyAnimationAssetId = \"-1\"\n\t}), AnimationInfo.new({\n\t\tdisplayName = \"mood_19\",\n\t\tfaceAnimationAssetId = \"7715178118\",\n\t\tbodyAnimationAssetId = \"-1\"\n\t}), AnimationInfo.new({\n\t\tdisplayName = \"mood_20\",\n\t\tfaceAnimationAssetId = \"7715183102\",\n\t\tbodyAnimationAssetId = \"-1\"\n\t})}\n\n\n\nlocal character = script.Parent\nlocal humanoid = character:WaitForChild(\"Humanoid\")\n\nfunction StopPlayback()\n\tlocal playingAnims = humanoid:GetPlayingAnimationTracks()\n\tfor i, track in pairs(playingAnims) do\n\t\tif track.Name == \"head\" then\n\t\t\ttrack:Stop()\n\t\tend\n\tend\nend\n\n\nfunction PlayFaceAndBodyAnimsByIds(targetFaceAnim, targetBodyAnim)\n\tlocal humanoid = character:WaitForChild(\"Humanoid\")\n\n\tStopPlayback()\n\n\tlocal faceAnimation\n\tlocal faceAnimationTrack\n\n\t-- play the face animation\n\tif targetFaceAnim ~= \"-1\" and targetFaceAnim ~= nil then\n\t\tfaceAnimation = Instance.new(\"Animation\")\n\t\tfaceAnimation.AnimationId = \"rbxassetid://\" .. targetFaceAnim\n\t\tfaceAnimationTrack = humanoid:LoadAnimation(faceAnimation)\n\t\tfaceAnimationTrack.Looped = true\n\t\tfaceAnimationTrack.Name = \"head\"\n\t\tfaceAnimationTrack:Play()\n\tend\n\n\tlocal bodyAnimation\n\tlocal bodyAnimationTrack\n\n\t-- play the body animation\n\tlocal bodyAnim = script:GetAttribute(\"BodyAnimate\")\n\tif bodyAnim and targetBodyAnim ~= \"-1\" and targetBodyAnim ~= nil then\n\t\tbodyAnimation = Instance.new(\"Animation\")\n\t\tbodyAnimation.AnimationId = \"http://www.roblox.com/asset/?id=\" .. targetBodyAnim\n\t\tbodyAnimationTrack = humanoid:LoadAnimation(bodyAnimation)\n\t\tbodyAnimationTrack.Looped = true\n\t\tbodyAnimationTrack.Name = \"body\"\n\t\tbodyAnimationTrack:Play()\n\tend\nend\n\n\nwait(delayBeforeStart)\n\n\nwhile true do\n\tfor index = 1, #animationsListMoods do\n\tlocal item = animationsListMoods[index]\n\tPlayFaceAndBodyAnimsByIds(item.faceAnimationAssetId, item.bodyAnimationAssetId)\n\n\tprint(\"playing: \"..item.displayName)\n\twait(delayBetweenSwitching)\n\tend\nend"
