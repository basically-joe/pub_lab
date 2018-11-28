require("minitest/rg")
require("minitest/autorun")

require_relative("../pub")
require_relative("../customer")
require_relative("../drink")

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new("Black Horse", 1000)
    @customer = Customer.new("Joe", 100, 32)
    @drink = Drink.new("beer", 2, "5%")
  end

  def test_can_create_pub
    assert_equal(Pub, @pub.class())
  end

def test_customer_legal_age__true
  assert_equal(true, @pub.customer_legal_age__true(@customer))
end

def test_add_drink_to_pub
  @pub.add_drink_to_pub(@drink)
  assert_equal(1, @pub.drink_count())
end

def test_drink_price
  assert_equal(2, @pub.drink_price(@drink))
end

def test_add_money_to_till
  assert_equal(1002, @pub.add_money_to_till(@drink))
end

# def test_remove_drink_from_pub
#   @pub.remove_drink_from_pub(@drink)
#   assert_equal(0, @pub.drink_count())
# end

# def test_add_money_to_till
#   @pub.add_drink_to_pub(@drink)
#   assert_equal(1, @pub.drink_count())
# end

end
