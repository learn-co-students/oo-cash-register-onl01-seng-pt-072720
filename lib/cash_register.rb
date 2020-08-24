require 'pry' 

class CashRegister

attr_accessor :total, :discount, :title, :price, :last_transaction, :items

def initialize(discount=0)
  @discount = discount  
  @total = 0 
  @items = []
end 
  
def add_item(title, price, quantity = 1)
  if quantity < 1 
    @total += price
  else 
    @total += (quantity*price)
    @last_transaction = @total
    @total 
    
    @items << title 
  end 
end 

def apply_discount()
  if @discount > 0 
    @discount = @discount/100.to_f
    @total = @total-(@total*@discount)
    puts "After the discount, the total comes to $#{@total}"
  else 
    puts "There is no discount to apply."
  end 
end 

def void_last_transaction
  @total -= @last_transaction
  # if @items = @items.empty? 
  #   @total = [] 
end

end