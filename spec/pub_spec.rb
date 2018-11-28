require("minitest/rg")
require("minitest/autorun")

require_relative("../pub")
require_relative("../customer")
require_relative("../drink")

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new("Black Horse", 1000, 10)
    @customer = Customer.new("Joe", 100, 32)
    @drink = Drink.new("Bottle of Vodka", 32, "40%")
  end

  def test_can_create_pub
    assert_equal(Pub, @pub.class())
  end

def test_customer_legal_age__true
  assert_equal(true, @pub.customer_legal_age__true(@customer))
end

  # def test_add_money_to_till
  #   assert_equal(1032, add_money_to_till(@customer))
  # end

end
