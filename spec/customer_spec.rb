require("minitest/rg")
require("minitest/autorun")

require_relative("../customer")

class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new("Joe", 100, 32)
  end

  def test_can_create_customer
    assert_equal(Customer, @customer.class())
  end

end
