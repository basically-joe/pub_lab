class Customer

  attr_reader :customer_name, :customer_age
  attr_accessor :customer_wallet

  def initialize(customer_name, customer_wallet, customer_age)

    @customer_name = customer_name
    @customer_wallet = customer_wallet
    @customer_age = customer_age
  end
end