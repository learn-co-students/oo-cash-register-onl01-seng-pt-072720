class CashRegister
  attr_accessor :discount, :total, :items, :last_transaction_amount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
    if quantity == 1
      @items << item
      self.last_transaction_amount = price
    else
      count = 0
      until count == quantity do
        @items << item
        count += 1
      end
      self.last_transaction_amount = price * quantity
    end
    @total += (quantity * price)
  end
  
  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total -= (@total * (@discount.to_f / 100)).to_i
      return "After the discount, the total comes to $" + @total.to_s + "."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    if @items.size == 1
      @items.clear
      @total = 0
    else
      @total = @total - self.last_transaction_amount
    end
  end
end
