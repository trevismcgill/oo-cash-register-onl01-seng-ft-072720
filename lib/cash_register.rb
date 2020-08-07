require "pry"
class CashRegister
attr_accessor :total, :discount, :cart

def initialize(discount = 0)
@total = 0
@discount = discount
@cart = []
end

def total
@total
end

def add_item(title, price, quantity = 1)
@cart.push(title)
@total += price * quantity
end

def apply_discount
  # binding.pry
  if @discount == 0
    "There is no discount to apply."
  else
discount_percent = @discount.to_f / 100
new_total = (@total *= (1.0 - discount_percent)).to_i
# new_total = new_total_float.to_i
# binding.pry
"After the discount, the total comes to $#{new_total}."
end

end

def items(i1, i2)
@cart
end

def void_last_transaction

end
end
