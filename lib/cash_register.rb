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

end

def items(i1, i2)

end

def void_last_transaction

end
end
