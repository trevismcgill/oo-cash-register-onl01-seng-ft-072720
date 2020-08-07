require "pry"
class CashRegister
attr_accessor :total, :discount

def initialize(discount = 0)
@total = 0
@discount = discount
end

def total
@total
end

def add_item(title, price, quantity = 1)
@total += price * quantity
end

def apply_discount
  binding.pry
(@total * (@discount.to_f / 100))
binding.pry
puts "After the discount, the total comes to $#{@total}"
end

def items(i1, i2)

end

def void_last_transaction

end
end
