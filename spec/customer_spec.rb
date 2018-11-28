require("minitest/rg")
require("minitest/autorun")

require_relative("../customer")
require_relative("../pub")
require_relative("../drink")

class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new("Joe", 100, 32)
    @drink = Drink.new("beer", 10, "5%")
  end

  def test_can_create_customer
    assert_equal(Customer, @customer.class())
  end

  def test_customer_can_afford_drink
    assert_equal(true, @customer.customer_can_afford_drink(@drink))
  end

def test_customer_pay_for_drink
  @customer.customer_pay_for_drink(@drink)
  assert_equal(90, @customer.customer_wallet)
end

end
