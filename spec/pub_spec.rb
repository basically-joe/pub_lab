require("minitest/rg")
require("minitest/autorun")

require_relative("../pub")
require_relative("../customer")
require_relative("../drink")

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new("Black Horse", 1000)
    @customer = Customer.new("Joe", 100, 32)
    @drink = Drink.new("beer", 2, 5)
    @drink1 = Drink.new("vodka", 4, 40)
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

  def test_remove_drink_from_pub
    @pub.add_drink_to_pub(@drink)
    @pub.add_drink_to_pub(@drink1)
    @pub.remove_drink_from_pub(@drink)
    assert_equal(1, @pub.drink_count())
  end

  def test_sell_drink_to_customer
    @pub.add_drink_to_pub(@drink)
    @pub.add_drink_to_pub(@drink1)
    @pub.sell_drink_to_customer(@customer, @drink1)
    assert_equal(1004, @pub.till_money)
    assert_equal(1, @pub.drink_count())
    assert_equal(96, @customer.customer_wallet())
  end

  def test_customer_drunk__true
    @pub.add_drink_to_pub(@drink)
    @pub.add_drink_to_pub(@drink1)
    assert_equal(true, @pub.customer_drunk__true())
  end

end
