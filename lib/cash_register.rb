class CashRegister
  
  attr_accessor :total, :discount, :last_price
  @@items = []
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity=1)
    @last_price = price * quantity
    self.total += @last_price
    
    quantity.times do
      @items << title
    end
  end
  
  def apply_discount
    if @discount <= 0
      "There is no discount to apply."
    else
      self.total = self.total - (self.total * @discount / 100.0)
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end 
  
  def items
    @items
  end
  
  def void_last_transaction
    self.total = self.total - @last_price
  end 
  
end