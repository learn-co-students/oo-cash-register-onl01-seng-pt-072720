require 'pry'
class CashRegister

  attr_accessor :new, :discount, :total, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    #items_list << @items
  end

def add_item(title,price,quantity = 1)
quantity.times do
  items << title
end
@last_total = @total
@total += price * quantity
end

def apply_discount
applied_discount = (100 - @discount) * 0.01
@total = applied_discount * @total
if @discount != 0
   return "After the discount, the total comes to $#{@total.to_i}."
else
  return "There is no discount to apply."
end
end

def items
  @items
end

def void_last_transaction
@total = @last_total

end

end
