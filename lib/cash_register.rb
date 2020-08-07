class CashRegister
attr_accessor :total

def initialize(discount=0)
@total = 0
end

def total
@total
end

def add_item(title, price, quantity=1)

  @total += price

end

def apply_discount(arg)

end

def items(i1, i2)

end

def void_last_transaction

end
end
