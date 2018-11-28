class Pub

  attr_reader :pub_name
  attr_accessor :till_money, :number_of_drinks_pub

  def initialize(pub_name, till_money)

    @pub_name = pub_name
    @till_money = till_money
    @number_of_drinks_pub = []


  end

  def customer_legal_age__true(customer)
    if customer.customer_age >= 18
      return true
    end
  end

def drink_count()
  return @number_of_drinks_pub.length()
end

def add_drink_to_pub(drink)
  @number_of_drinks_pub.push(drink)
end

def drink_price(drink)
  drink.price
end

def add_money_to_till(drink)
  @till_money += drink.price
end

end
