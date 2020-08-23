require 'pry'

class CashRegister
    attr_accessor :total, :discount, :quantity, :price, :final_item

    def initialize(discount=0)
        @total = 0
        @discount = discount
        #@price = price
        @quantity = quantity
        @items = []
        @transactions = []
    end

    def add_item(title, price, quantity = 1)
        @price = price
        @total += price * quantity
        @final_item = price * quantity
        #In order to get the test to pass for void_last_transaction you must determine @final_item 
        @transactions << price
        i = quantity
        until i == 0 do 
            @items << title
            i -= 1
        end
    end

    def apply_discount
        if discount == 0
            "There is no discount to apply."
        else
            self.total -= (0.01 * discount * @total).to_i
            "After the discount, the total comes to $#{self.total}."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        self.total -= @final_item
        #this is where i was struggling. When you call the class into the method and subrtract the final item from the total it will pass the test. this was stressful
    end


end
