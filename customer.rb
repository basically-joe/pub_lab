class Customer

  attr_reader :customer_name, :customer_age, :customer_alcohol_level
  attr_accessor :customer_wallet

  def initialize(customer_name, customer_wallet, customer_age)

    @customer_name = customer_name
    @customer_wallet = customer_wallet
    @customer_age = customer_age
    @customer_alcohol_level = 0
  end

  def customer_can_afford_drink(drink)
    return customer_wallet > drink.price
  end

  def customer_pay_for_drink(drink)
    if customer_can_afford_drink(drink)
     @customer_wallet -= drink.price
   end
  end

  def alcohol_level_customer__increase(drink)
    @customer_alcohol_level += drink.alcohol_level
end
end
