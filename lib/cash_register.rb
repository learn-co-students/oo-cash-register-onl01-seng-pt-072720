class CashRegister
  
  attr_accessor :total, :discount, :price, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @transactions = []
  end   
  
  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    @transactions << price * quantity
    if quantity > 1 
      i = 0 
      while i < quantity 
        @items << item 
        i += 1 
      end 
    else 
      @items << item
    end 
  end   
  
  def apply_discount
    if @discount > 0 
      @x = (price * discount)/100 
      @total -= @x
      return "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end   
  
  def void_last_transaction
    @total = @total - @transactions.pop 
  end   
  
end   