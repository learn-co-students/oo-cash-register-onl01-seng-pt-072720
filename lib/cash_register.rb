require "pry"
class CashRegister
  attr_accessor :total, :discount, :last_transaction

  
  def initialize(discount = 0)
    @total = 0
    @discount = discount 
    @items = []
  end
  
  
  def add_item(title, price, quantity = 1)
    @last_transaction = price * quantity
    @total += @last_transaction
    counter = 0 
    while counter < quantity
    @items << title 
    counter += 1 
    
  end
 
  
  def apply_discount
     @total -= @total*(@discount/100.to_f) 
     @discount > 0 ? "After the discount, the total comes to $#{@total.to_i}." : "There is no discount to apply."
     end
     
     def items
       @items
     end
     end
     
     def void_last_transaction
       @total = @total - @last_transaction 
     end

   end