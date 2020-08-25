require 'pry' 

class CashRegister

attr_accessor :total, :discount, :title, :price, :last_transaction, :items

  def initialize(discount=0)
    @discount = discount  
    @total = 0 
    @items = []
  end 
  
  def add_item(title, price, quantity = 1)
      @last_transaction = price*quantity
      @total += @last_transaction
      if quantity < 1 
      @items << title 
    else 
      quantity > 1
      counter = 0
      while counter < quantity
        @items << title
        counter += 1
      end
    end 
  end 

  def apply_discount()
    if @discount > 0 
      @discount_percentage = @discount/100.to_f
      @total -= (@total*@discount_percentage).to_i
      "After the discount, the total comes to $#{self.total}."
    else 
      "There is no discount to apply."
    end 
  end 

  def void_last_transaction
    @total -= @last_transaction
  end 

end