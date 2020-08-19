class CashRegister
attr_accessor :total, :discount, :last_transaction

    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @cart = []
    end

    def add_item(item, price, quantity = 1)        
        @total += (price * quantity)
        quantity.times do
            @cart << item
        end
        @last_transaction = price * quantity
    end

    def apply_discount
        if @discount == nil
            return "There is no discount to apply."
        end
        @total -= @total * @discount / 100
        return "After the discount, the total comes to $#{@total}." 
    end

    def items
        @cart
    end

    def void_last_transaction
        @total = @total - @last_transaction
    end
end
