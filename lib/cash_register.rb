class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

    
    def initialize(employee_discount=0)
        @total = 0
        @discount = employee_discount
        @items = []
    end

    def add_item(item, price, quantity = 1)
        self.total += price * quantity
        quantity.times do
            self.items << item
        end
        self.last_transaction = price * quantity
    end

    def apply_discount
        if self.discount > 0
            after_discount = total - (total * discount / 100)
            self.total = after_discount
            "After the discount, the total comes to $#{after_discount}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end

end