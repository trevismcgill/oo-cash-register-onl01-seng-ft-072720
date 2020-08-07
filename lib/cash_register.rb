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
  # binding.pry
discount_percent = @discount.to_f / 100
new_total = (@total * (1.0 - discount_percent))
# binding.pry
"After the discount, the total comes to $#{new_total}"
end

def items(i1, i2)

end

def void_last_transaction

end
end
