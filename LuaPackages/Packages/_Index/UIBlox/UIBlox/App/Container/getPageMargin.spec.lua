return function()
	local getPageMargin = require(script.Parent.getPageMargin)
	describe("getPageMargin()", function()
		it("should return the number 12", function()
			local pageMargin = getPageMargin(312)
			expect(pageMargin).to.equal(12)
		end)
		it("should return the number 24", function()
			local pageMargin = getPageMargin(400)
			expect(pageMargin).to.equal(24)
		end)
		it("should return the number 48", function()
			local pageMargin = getPageMargin(700)
			expect(pageMargin).to.equal(48)
		end)
		it("it should error", function()
			expect(function()
				return getPageMargin("String")
			end).to.throw()
		end)
	end)
end
