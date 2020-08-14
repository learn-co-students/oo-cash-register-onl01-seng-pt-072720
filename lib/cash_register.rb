require 'pry'

class CashRegister
    attr_accessor :total, :discount, :last_transaction
    # @@total = 0

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end 

    def total 
        @total 
    end 

    def add_item(title, price, opt_quantity = 1)
        @last_transaction = price * opt_quantity 
        @total = @total + @last_transaction

        opt_quantity.times do 
            @items << title 
        end 
    end 

    def apply_discount
        if @discount > 0
            @total = @total - (@total * (@discount/100.0))
            "After the discount, the total comes to $#{@total.to_i}."
        else 
            "There is no discount to apply."
        end 
    end 

    def items
        @items
    end 

    def void_last_transaction
        @total = @total - @last_transaction
    end 
end 