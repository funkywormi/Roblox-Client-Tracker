local Root = script.Parent.Parent
local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")

local CompleteRequest = require(Root.Actions.CompleteRequest)
local RequestType = require(Root.Enums.RequestType)
local Thunk = require(Root.Thunk)

local FFlagPerformPurchaseNewBundleInfoTypeEnabled = settings():GetFFlag("PerformPurchaseNewBundleInfoTypeEnabled")

local function completeRequest()
	return Thunk.new(script.Name, {}, function(store, services)
		local state = store:getState()
		local requestType = state.promptRequest.requestType
		local id = state.promptRequest.id
		local didPurchase = state.hasCompletedPurchase

		if requestType == RequestType.Product then
			local playerId = Players.LocalPlayer.UserId

			MarketplaceService:SignalPromptProductPurchaseFinished(playerId, id, didPurchase)
		elseif requestType == RequestType.GamePass then
			MarketplaceService:SignalPromptGamePassPurchaseFinished(Players.LocalPlayer, id, didPurchase)
		elseif FFlagPerformPurchaseNewBundleInfoTypeEnabled and requestType == RequestType.Bundle then
			MarketplaceService:SignalPromptBundlePurchaseFinished(Players.LocalPlayer, id, didPurchase)
		elseif requestType == RequestType.Asset then
			MarketplaceService:SignalPromptPurchaseFinished(Players.LocalPlayer, id, didPurchase)

			local assetTypeId = state.productInfo.assetTypeId
			if didPurchase and assetTypeId then
				-- AssetTypeId returned by the platform endpoint might not exist in the AssetType Enum
				pcall(function() MarketplaceService:SignalAssetTypePurchased(Players.LocalPlayer, assetTypeId) end)
			end
		elseif requestType == RequestType.Premium then
			MarketplaceService:SignalPromptPremiumPurchaseFinished(didPurchase)
		end

		return store:dispatch(CompleteRequest())
	end)
end

return completeRequest