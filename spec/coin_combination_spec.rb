require('pry')
require('rspec')
require('coin_combination')

  describe('String#coin_combination') do
      it("99cents") do
        expect(99.coin_combination()).to(eq("Quarter: 3 Dime: 2 Penny: 4 "))
      end
  end
