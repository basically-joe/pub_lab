class Pub

attr_reader :pub_name
attr_accessor :till_money, :number_of_drinks_pub

def initialize(pub_name, till_money, number_of_drinks_pub)

@pub_name = pub_name
@till_money = till_money
@number_of_drinks_pub = number_of_drinks_pub

end

def add_money_to_till(customer)
@till_money
end

end
