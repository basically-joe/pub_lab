require("minitest/rg")
require("minitest/autorun")

require_relative("../customer")
require_relative("../pub")
require_relative("../drink")

class CustomerTest < MiniTest::Test

  def setup
    @pub = Pub.new("Black Horse", 1000)
    @customer = Customer.new("Joe", 100, 32)
    @drink = Drink.new("beer", 10, 5)
  end

  def test_can_create_customer
    assert_equal(Customer, @customer.class())
  end

  def test_customer_can_afford_drink
    assert_equal(true, @customer.customer_can_afford_drink(@drink))
  end

  def test_customer_pay_for_drink
    @pub.add_drink_to_pub(@drink)
    @customer.customer_pay_for_drink(@drink)
    assert_equal(90, @customer.customer_wallet)
  end

  def test_alcohol_level_customer_increase
    @customer.alcohol_level_customer__increase(@drink)
    assert_equal(5, @customer.customer_alcohol_level)
  end

end
