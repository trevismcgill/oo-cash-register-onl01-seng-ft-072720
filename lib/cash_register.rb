require "pry"
class CashRegister
attr_accessor :total, :discount, :cart, :price, :title, :quantity, :last_item

def initialize(discount = 0)
@total = 0
@discount = discount
@cart = []
end

def total
@total
end

def add_item(title, price, quantity = 1)
quantity.times {@cart.push(title)}
@last_item = {}
@last_item[@cart[-1]] = price
# binding.pry
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

def items
@cart
end

def void_last_transaction
  # binding.pry
  @total -= @last_item[0]
@cart.pop
if @cart = []
  @total = 0
end
end

end
