class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title,price,quantity = 1)
        @total +=(price*quantity)
        @total 
        if quantity > 0
            i = 0 
            while i < quantity 
                @items << title 
                i+=1
            end
        end
        @last_transaction = []
        @last_transaction << (price*quantity) 
    end

    def apply_discount
        if @discount > 0 
            @discount = @discount.to_f
            @total = @total - (@total*(@discount/100))
            @total = @total.to_i
            return "After the discount, the total comes to $#{@total}."
        else 
            return "There is no discount to apply."
        end

    end

    def items
        @items
    end

    def void_last_transaction
        @total = @total - @last_transaction.join.to_f
        @total
    end


end

