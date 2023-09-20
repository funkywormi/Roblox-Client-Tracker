return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)
	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local RobloxGui = CoreGui:WaitForChild("RobloxGui")

	local ContactList = RobloxGui.Modules.ContactList

	local Reducer = require(ContactList.Reducer)
	local FriendListContainer = require(ContactList.Components.FriendList.FriendListContainer)

	local dependencies = require(ContactList.dependencies)
	local PresenceModel = dependencies.RoduxPresence.Models.Presence

	it("should mount and unmount without errors", function()
		local store = Rodux.Store.new(Reducer, {
			NetworkStatus = {
				["https://friends.roblox.com/v1/users/12345678/friends"] = "Done",
			},
			Presence = {
				byUserId = {
					["00000000"] = PresenceModel.format(PresenceModel.mock()),
					["11111111"] = PresenceModel.format(PresenceModel.mock()),
				},
			},
			Users = {
				byUserId = {
					["00000000"] = {
						id = "00000000",
						username = "user name 0",
						displayName = "display name 0",
						hasVerifiedBadge = false,
					},
					["11111111"] = {
						id = "11111111",
						username = "user name 1",
						displayName = "display name 1",
						hasVerifiedBadge = false,
					},
				},
			},
			Friends = {
				byUserId = {
					["12345678"] = {
						"00000000",
						"11111111",
					},
				},
			},
		}, {
			Rodux.thunkMiddleware,
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				FriendListContainer = Roact.createElement(FriendListContainer, {
					isDevMode = true,
					isSmallScreen = false,
					dismissCallback = function() end,
					scrollingEnabled = true,
					searchText = "",
				}),
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)
		local containerElement = folder:FindFirstChildOfClass("ScrollingFrame") :: ScrollingFrame
		-- UIListLayout + 2 friend items
		expect(#containerElement:GetChildren()).toBe(3)
		Roact.unmount(instance)
	end)

	describe("search filtering", function()
		it("should correctly show matched usernames", function()
			local store = Rodux.Store.new(Reducer, {
				NetworkStatus = {
					["https://friends.roblox.com/v1/users/12345678/friends"] = "Done",
				},
				Presence = {
					byUserId = {
						["00000000"] = PresenceModel.format(PresenceModel.mock()),
						["11111111"] = PresenceModel.format(PresenceModel.mock()),
					},
				},
				Users = {
					byUserId = {
						["00000000"] = {
							id = "00000000",
							username = "Roblox_HaruHaru",
							displayName = "display name 0",
							hasVerifiedBadge = false,
						},
						["11111111"] = {
							id = "11111111",
							username = "user name 1",
							displayName = "display name 1",
							hasVerifiedBadge = false,
						},
					},
				},
				Friends = {
					byUserId = {
						["12345678"] = {
							"00000000",
							"11111111",
						},
					},
				},
			}, {
				Rodux.thunkMiddleware,
			})

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
					FriendListContainer = Roact.createElement(FriendListContainer, {
						isDevMode = true,
						isSmallScreen = false,
						dismissCallback = function() end,
						scrollingEnabled = true,
						searchText = "Haru",
					}),
				}),
			})

			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)
			local containerElement = folder:FindFirstChildOfClass("ScrollingFrame") :: ScrollingFrame
			-- UIListLayout + 1 friend items
			expect(#containerElement:GetChildren()).toBe(2)
			Roact.unmount(instance)
		end)

		it("should correctly show matched displayNames", function()
			local store = Rodux.Store.new(Reducer, {
				NetworkStatus = {
					["https://friends.roblox.com/v1/users/12345678/friends"] = "Done",
				},
				Presence = {
					byUserId = {
						["00000000"] = PresenceModel.format(PresenceModel.mock()),
						["11111111"] = PresenceModel.format(PresenceModel.mock()),
					},
				},
				Users = {
					byUserId = {
						["00000000"] = {
							id = "00000000",
							username = "user name 0",
							displayName = "Haru",
							hasVerifiedBadge = false,
						},
						["11111111"] = {
							id = "11111111",
							username = "user name 1",
							displayName = "display name 1",
							hasVerifiedBadge = false,
						},
					},
				},
				Friends = {
					byUserId = {
						["12345678"] = {
							"00000000",
							"11111111",
						},
					},
				},
			}, {
				Rodux.thunkMiddleware,
			})

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
					FriendListContainer = Roact.createElement(FriendListContainer, {
						isDevMode = true,
						isSmallScreen = false,
						dismissCallback = function() end,
						scrollingEnabled = true,
						searchText = "Haru",
					}),
				}),
			})

			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)
			local containerElement = folder:FindFirstChildOfClass("ScrollingFrame") :: ScrollingFrame
			-- UIListLayout + 1 friend items
			expect(#containerElement:GetChildren()).toBe(2)
			Roact.unmount(instance)
		end)

		it("should not show anything if neither username nor displayName match", function()
			local store = Rodux.Store.new(Reducer, {
				NetworkStatus = {
					["https://friends.roblox.com/v1/users/12345678/friends"] = "Done",
				},
				Presence = {
					byUserId = {
						["00000000"] = PresenceModel.format(PresenceModel.mock()),
						["11111111"] = PresenceModel.format(PresenceModel.mock()),
					},
				},
				Users = {
					byUserId = {
						["00000000"] = {
							id = "00000000",
							username = "user name 0",
							displayName = "display name 0",
							hasVerifiedBadge = false,
						},
						["11111111"] = {
							id = "11111111",
							username = "user name 1",
							displayName = "display name 1",
							hasVerifiedBadge = false,
						},
					},
				},
				Friends = {
					byUserId = {
						["12345678"] = {
							"00000000",
							"11111111",
						},
					},
				},
			}, {
				Rodux.thunkMiddleware,
			})

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
					FriendListContainer = Roact.createElement(FriendListContainer, {
						isDevMode = true,
						isSmallScreen = false,
						dismissCallback = function() end,
						scrollingEnabled = true,
						searchText = "Haru",
					}),
				}),
			})

			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)
			local containerElement = folder:FindFirstChildOfClass("ScrollingFrame") :: ScrollingFrame
			-- No scroll list.
			expect(containerElement).toBeNil()
			Roact.unmount(instance)
		end)
	end)

	describe("ordering", function()
		it("should sort names alphabetical", function()
			local store = Rodux.Store.new(Reducer, {
				NetworkStatus = {
					["https://friends.roblox.com/v1/users/12345678/friends"] = "Done",
				},
				Presence = {
					byUserId = {
						["00000000"] = PresenceModel.format(PresenceModel.mock()),
						["11111111"] = PresenceModel.format(PresenceModel.mock()),
						["22222222"] = PresenceModel.format(PresenceModel.mock()),
					},
				},
				Users = {
					byUserId = {
						["00000000"] = {
							id = "00000000",
							username = "UsernameC",
							displayName = "Display Name B",
							hasVerifiedBadge = false,
						},
						["11111111"] = {
							id = "11111111",
							username = "UsernameB",
							displayName = "Display Name B",
							hasVerifiedBadge = false,
						},
						["22222222"] = {
							id = "22222222",
							username = "UsernameA",
							displayName = "Display Name A",
							hasVerifiedBadge = false,
						},
					},
				},
				Friends = {
					byUserId = {
						["12345678"] = {
							"00000000",
							"11111111",
							"22222222",
						},
					},
				},
			}, {
				Rodux.thunkMiddleware,
			})

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
					FriendListContainer = Roact.createElement(FriendListContainer, {
						isDevMode = true,
						isSmallScreen = false,
						dismissCallback = function() end,
						scrollingEnabled = true,
						searchText = "",
					}),
				}),
			})

			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)
			local containerElement = folder:FindFirstChildOfClass("ScrollingFrame") :: ScrollingFrame
			-- UIListLayout + 3 friend items
			expect(#containerElement:GetChildren()).toBe(4)

			local usernameElement1: TextLabel =
				containerElement:GetChildren()[2]:FindFirstChild("Username", true) :: TextLabel
			expect(usernameElement1.Text).toBe("@UsernameA")

			local usernameElement2: TextLabel =
				containerElement:GetChildren()[3]:FindFirstChild("Username", true) :: TextLabel
			expect(usernameElement2.Text).toBe("@UsernameB")

			local usernameElement3: TextLabel =
				containerElement:GetChildren()[4]:FindFirstChild("Username", true) :: TextLabel
			expect(usernameElement3.Text).toBe("@UsernameC")

			Roact.unmount(instance)
		end)
	end)
end
