require 'pry'

class CashRegister
    attr_accessor :total, :discount, :title, :price, :total_items

@@all_items = []

    def initialize (discount = 0)
      @total = 0
      @discount = discount
      @@all_items.clear
    end


def add_item (title, price, quantity = 1)
  @title = title
  @price = price
  @quantity = quantity
  @total = total + (price * quantity)
  quantity.times do save
  end
end

def save
   @@all_items << self.title
end


def apply_discount
  @discount = discount
  percent = 100 - discount
  @total = total * percent / 100
  if discount == 0
    "There is no discount to apply."
  else
    "After the discount, the total comes to $#{@total}."
  end
end

def items
@@all_items
end

def void_last_transaction
  @quantity.times do @@all_items.pop
  end
  if @@all_items == []
    @total = 0.0
  else
    @total -= price
  end
end

end
