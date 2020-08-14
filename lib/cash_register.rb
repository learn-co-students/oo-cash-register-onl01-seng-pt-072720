class CashRegister
    attr_accessor :total, :discount, :items, :item_prices
    def initialize(discount = 0)
        @total = 0
        @items = []
        @item_prices = []
        self.discount = discount
    end

    def total 
        @total
    end

    def add_item(title, price, quantity = 1)
        @items += [title] * quantity
        @item_prices += [price] * quantity
        self.total += price * quantity
    end

    def apply_discount 
        if self.discount > 0
            final_disc = @total * self.discount / 100
            @total -= final_disc
            "After the discount, the total comes to $#{@total}."
        else
            'There is no discount to apply.'   
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total -= @item_prices.last * @item_prices.count(@item_prices.last)
        @item_prices.pop
        @items.pop
        @total = 0 if @items == [] 
    end
end
