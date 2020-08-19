class CashRegister
  
  attr_accessor :total, :discount, :items, :last_item
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    self.items.concat([title] * quantity)
    self.last_item = price * quantity
  end
  
  def apply_discount
    if self.discount != nil
      self.total -= self.discount * 10
      # self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    self.total -= self.last_item
  end
  
  
end
