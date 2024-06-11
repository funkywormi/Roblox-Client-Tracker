return function()
	local CorePackages = game:GetService("CorePackages")
	
	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local Rodux = InGameMenuDependencies.Rodux
	
	local act = Roact.act
	
	local InGameMenu = script.Parent.Parent
	local reducer = require(InGameMenu.reducer)

	local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
	local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)

	local PageNavigationWatcher = require(script.Parent.PageNavigationWatcher)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			PageNavigationWatcher = Roact.createElement(PageNavigationWatcher, {
				desiredPage = "testPage",
				onNavigateTo = function()
					print("On navigate to!")
				end,
				onNavigateAway = function()
					print("On navigate away!")
				end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should call onNavigateTo when the desiredPage is navigated to", function()
		local store = Rodux.Store.new(reducer)
		store:dispatch(SetMenuOpen(true))

		local didCallOnNavigateTo = false
		local didCallOnNavigateAway = false
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store
		}, {
			PageNavigationWatcher = Roact.createElement(PageNavigationWatcher, {
				desiredPage = "testPage",
				onNavigateTo = function()
					didCallOnNavigateTo = true
				end,
				onNavigateAway = function()
					didCallOnNavigateAway = true
				end,
			}),
		})

		local instance = Roact.mount(element)

		act(function()
			store:dispatch(SetCurrentPage("testPage"))
			store:flush()
		end)

		expect(didCallOnNavigateTo).toBe(true)
		expect(didCallOnNavigateAway).toBe(false)

		Roact.unmount(instance)
	end)

	it("should call onNavigateTo when the menu is opened", function()
		local store = Rodux.Store.new(reducer)
		store:dispatch(SetCurrentPage("testPage"))

		local didCallOnNavigateTo = false
		local didCallOnNavigateAway = false
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store
		}, {
			PageNavigationWatcher = Roact.createElement(PageNavigationWatcher, {
				desiredPage = "testPage",
				onNavigateTo = function()
					didCallOnNavigateTo = true
				end,
				onNavigateAway = function()
					didCallOnNavigateAway = true
				end,
			}),
		})

		local instance = Roact.mount(element)

		act(function()
			store:dispatch(SetMenuOpen(true))
			store:flush()
		end)

		expect(didCallOnNavigateTo).toBe(true)
		expect(didCallOnNavigateAway).toBe(false)

		Roact.unmount(instance)
	end)

	it("should not call onNavigateTo when the menu is closed", function()
		local store = Rodux.Store.new(reducer)
		store:dispatch(SetMenuOpen(false))

		local didCallOnNavigateTo = false
		local didCallOnNavigateAway = false
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store
		}, {
			PageNavigationWatcher = Roact.createElement(PageNavigationWatcher, {
				desiredPage = "testPage",
				onNavigateTo = function()
					didCallOnNavigateTo = true
				end,
				onNavigateAway = function()
					didCallOnNavigateAway = true
				end,
			}),
		})

		local instance = Roact.mount(element)

		act(function()
			store:dispatch(SetCurrentPage("testPage"))
			store:flush()
		end)


		expect(didCallOnNavigateTo).toBe(false)
		expect(didCallOnNavigateAway).toBe(false)

		Roact.unmount(instance)
	end)


	it("should call onNavigateAway when the desired page is navigated away from", function()
		local store = Rodux.Store.new(reducer)
		store:dispatch(SetCurrentPage("testPage"))
		store:dispatch(SetMenuOpen(true))

		local didCallOnNavigateTo = false
		local didCallOnNavigateAway = false
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store
		}, {
			PageNavigationWatcher = Roact.createElement(PageNavigationWatcher, {
				desiredPage = "testPage",
				onNavigateTo = function()
					didCallOnNavigateTo = true
				end,
				onNavigateAway = function()
					didCallOnNavigateAway = true
				end,
			}),
		})

		local instance = Roact.mount(element)

		act(function()
			store:dispatch(SetCurrentPage("otherTestPage"))
			store:flush()
		end)

		expect(didCallOnNavigateTo).toBe(false)
		expect(didCallOnNavigateAway).toBe(true)

		Roact.unmount(instance)
	end)

	it("should call onNavigateAway when the menu is closed", function()
		local store = Rodux.Store.new(reducer)
		store:dispatch(SetCurrentPage("testPage"))
		store:dispatch(SetMenuOpen(true))

		local didCallOnNavigateTo = false
		local didCallOnNavigateAway = false
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store
		}, {
			PageNavigationWatcher = Roact.createElement(PageNavigationWatcher, {
				desiredPage = "testPage",
				onNavigateTo = function()
					didCallOnNavigateTo = true
				end,
				onNavigateAway = function()
					didCallOnNavigateAway = true
				end,
			}),
		})

		local instance = Roact.mount(element)

		act(function()
			store:dispatch(SetMenuOpen(false))
			store:flush()
		end)

		expect(didCallOnNavigateTo).toBe(false)
		expect(didCallOnNavigateAway).toBe(true)

		Roact.unmount(instance)
	end)


	it("should not call onNavigateAway if the menu was never opened", function()
		local store = Rodux.Store.new(reducer)
		store:dispatch(SetCurrentPage("testPage"))
		store:dispatch(SetMenuOpen(false))

		local didCallOnNavigateTo = false
		local didCallOnNavigateAway = false
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store
		}, {
			PageNavigationWatcher = Roact.createElement(PageNavigationWatcher, {
				desiredPage = "testPage",
				onNavigateTo = function()
					didCallOnNavigateTo = true
				end,
				onNavigateAway = function()
					didCallOnNavigateAway = true
				end,
			}),
		})

		local instance = Roact.mount(element)

		store:dispatch(SetCurrentPage("testPage2"))
		store:flush()

		expect(didCallOnNavigateTo).toBe(false)
		expect(didCallOnNavigateAway).toBe(false)

		Roact.unmount(instance)
	end)
end
