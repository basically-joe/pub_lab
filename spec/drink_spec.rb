require("minitest/rg")
require("minitest/autorun")

require_relative("../drink")

class DrinkTest < MiniTest::Test

  def setup
    @drink = Drink.new("beer", 2, "5%")
  end

def test_can_create_drink
  assert_equal(Drink, @drink.class())
end

end
