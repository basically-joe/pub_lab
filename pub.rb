class Pub

  attr_reader :pub_name
  attr_accessor :till_money, :number_of_drinks_pub

  def initialize(pub_name, till_money, number_of_drinks_pub)

    @pub_name = pub_name
    @till_money = till_money
    @number_of_drinks_pub = number_of_drinks_pub

  end

  def customer_legal_age__true(customer)
    if customer.customer_age >= 18
      return true
    end
  end

def pub_sell_drink_to_customer(drink)
end

end
