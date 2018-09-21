class CashRegister
  attr_accessor :cash_register, :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end


def add_item(title, price, quantity = 1)
  quantity.times do
    @items << title
  end
  @total += price * quantity
end


def apply_discount
  if discount != 0
    self.total = (total * ((100.0 - discount.to_f) / 100.0)).to_i
    "After the discount, the total comes to $#{self.total}."
  else self.discount = 0
    return "There is no discount to apply."
 end

end


def void_last_transaction
self.total = self.total - self.total
end

def items
@items
end


end
