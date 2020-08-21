require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :items, :last_item, :last_transaction
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @last_item = nil
  end
  
  def add_item(title, price, quantity = 1)
    self.last_item = price
    self.items.concat([title] * quantity)
    self.total += price * quantity
    # binding.pry
    self.last_transaction = self.last_item * quantity
  end
  
  def apply_discount
    if self.discount != nil
    discount = self.discount * 10
    self.total -= discount
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    self.total -= self.last_transaction
    
  end
  
  
end