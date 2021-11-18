local Selection = game:GetService("Selection")

return function()
	local Plugin = script.Parent.Parent
	local Rhodium = require(Plugin.Packages.Dev.Rhodium)
	local XPath = Rhodium.XPath

	local TestHelper = require(Plugin.Src.Util.TestHelper)
	local TestRunner = require(Plugin.Src.Util.TestRunner)
	local runRhodiumTest = TestRunner.runRhodiumTest

	local Constants = require(Plugin.Src.Util.Constants)

	local ScreenFlowPath = TestHelper.getScreenFlow()
	local SelectFramePath =
		ScreenFlowPath:cat(XPath.new("SelectFrame.ViewArea"))
	local NextButtonPath =
		SelectFramePath:cat(XPath.new("NextAndBackButtonContainer.NextButton.Contents.TextButton"))
	local SelectScreenTextBoxPath =
		SelectFramePath:cat(XPath.new("Content.SelectedPartBox.Contents.TextBox"))

	describe("Next Button", function()
		it("Should be inactive if there is no selection", function()
			runRhodiumTest(function()
				expect(TestHelper.waitForXPathInstance(NextButtonPath)).to.be.ok()

				Selection:Set({})
				TestHelper.delay()
				TestHelper.clickXPath(NextButtonPath)

				-- We should still be on SelectItemScreen if we clicked Next while the button was inactive
				expect(TestHelper.waitForXPathInstance(SelectFramePath)).to.be.ok()
			end)
		end)

		-- Also tests if regular parts cannot be selected
		it("Should be inactive if there is invalid selection", function()
			runRhodiumTest(function()
				expect(TestHelper.waitForXPathInstance(NextButtonPath)).to.be.ok()

				TestHelper.addRegularPartFromExplorer()
				TestHelper.clickXPath(NextButtonPath)

				-- We should still be on SelectItemScreen if we clicked Next while the button was inactive
				expect(TestHelper.waitForXPathInstance(SelectFramePath)).to.be.ok()
			end)
		end)

		-- Also tests if MeshPart with WrapLayer is considered valid
		it("Should be active if there is valid selection", function()
			runRhodiumTest(function()
				expect(TestHelper.waitForXPathInstance(NextButtonPath)).to.be.ok()

				TestHelper.addLCItemWithFullCageFromExplorer()
				TestHelper.clickXPath(NextButtonPath)

				-- We should no longer be on SelectItemScreen if we clicked Next while the button was active
				expect(TestHelper.waitForXPathInstance(SelectFramePath)).to.equal(nil)
			end)
		end)
	end)

	describe("Selection", function()
		it("Should be able to pick a MeshPart", function()
			runRhodiumTest(function()
				expect(TestHelper.waitForXPathInstance(NextButtonPath)).to.be.ok()

				TestHelper.addLCItemWithoutCageFromExplorer()
				TestHelper.clickXPath(NextButtonPath)

				-- We should no longer be on SelectItemScreen if we clicked Next while the button was active
				expect(TestHelper.waitForXPathInstance(SelectFramePath)).to.equal(nil)
			end)
		end)

		it("Should not pick Avatars", function()
			runRhodiumTest(function()
				expect(TestHelper.waitForXPathInstance(NextButtonPath)).to.be.ok()

				TestHelper.addAvatarWithFullCagesFromExplorer()
				TestHelper.clickXPath(NextButtonPath)

				-- We should still be on SelectItemScreen if we clicked Next while the button was inactive
				expect(TestHelper.waitForXPathInstance(SelectFramePath)).to.be.ok()
			end)
		end)

		it("Should not pick MeshPart with WrapTarget", function()
			runRhodiumTest(function()

			end)
		end)
	end)

	describe("Selection Label", function()
		it("Should show name of valid selection", function()
			runRhodiumTest(function()
				expect(TestHelper.waitForXPathInstance(SelectScreenTextBoxPath)).to.be.ok()

				TestHelper.addLCItemWithoutCageFromExplorer()

				local textBox = TestHelper.waitForXPathInstance(SelectScreenTextBoxPath)
				expect(textBox).to.be.ok()
				expect(textBox.Text).to.equal(TestHelper.DefaultClothesName)
			end)
		end)

		it("Should be empty for no selection", function()
			runRhodiumTest(function()
				expect(TestHelper.waitForXPathInstance(SelectScreenTextBoxPath)).to.be.ok()

				Selection:Set({})
				TestHelper.delay()

				local textBox = TestHelper.waitForXPathInstance(SelectScreenTextBoxPath)
				expect(textBox).to.be.ok()
				expect(textBox.Text).to.equal("")
			end)
		end)

		it("Should be empty for invalid selection", function()
			runRhodiumTest(function()
				expect(TestHelper.waitForXPathInstance(SelectScreenTextBoxPath)).to.be.ok()

				TestHelper.addRegularPartFromExplorer()

				local textBox = TestHelper.waitForXPathInstance(SelectScreenTextBoxPath)
				expect(textBox).to.be.ok()
				expect(textBox.Text).to.equal("")
			end)
		end)
	end)
end