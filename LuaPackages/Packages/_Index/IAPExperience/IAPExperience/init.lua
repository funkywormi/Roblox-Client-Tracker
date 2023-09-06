return {
	Animator = require(script.Generic.Animator),

	ProductPurchase = require(script.ProductPurchase.ProductPurchasePrompt),
	ProductPurchaseRobuxUpsell = require(script.ProductPurchaseRobuxUpsell.ProductPurchaseRobuxUpsell),

	PurchaseFlow = {
		BuyRobuxFlow = require(script.PurchaseFlow.BuyRobux.BuyRobuxFlow),
		BuyRobuxFlowState = require(script.PurchaseFlow.BuyRobux.BuyRobuxFlowState),
		RobuxUpsellFlow = require(script.PurchaseFlow.RobuxUpsell.RobuxUpsellFlow),
		RobuxUpsellFlowState = require(script.PurchaseFlow.RobuxUpsell.RobuxUpsellFlowState),
		PremiumUpsellFlow = require(script.PurchaseFlow.PremiumUpsell.PremiumUpsellFlow),
		PremiumUpsellFlowState = require(script.PurchaseFlow.PremiumUpsell.PremiumUpsellFlowState),
		PurchaseErrorType = require(script.Generic.PurchaseErrorType),
		U13ConfirmType = require(script.Generic.U13ConfirmType),
		SubscriptionPurchaseFlow = require(script.PurchaseFlow.Subscription.SubscriptionPurchaseFlow),
		SubscriptionPurchaseFlowState = require(script.PurchaseFlow.Subscription.SubscriptionPurchaseFlowState),
	},

	Locale = {
		LocaleProvider = require(script.Locale.LocaleProvider),
	},
}
