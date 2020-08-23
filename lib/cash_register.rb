class CashRegister
    attr_accessor :total, :discount, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end 

    def add_item(title, price, opt_quantity = 1)
        self.last_transaction = price * opt_quantity 
        self.total = self.total + self.last_transaction 
        # variable declaration method vs. self.total => getter method

        opt_quantity.times do 
            items << title 
        end 
    end 

    def apply_discount
        if @discount > 0
            self.total = total - (total * (@discount/100.0))
            "After the discount, the total comes to $#{self.total.to_i}."
        else 
            "There is no discount to apply."
        end 
    end 

    def items
        @items
    end 

    def void_last_transaction
        self.total = total - last_transaction
    end 
end 

# Alternative Solution:
# class CashRegister

#     attr_accessor :items, :discount, :total, :last_transaction
  
#     def initialize(discount=0)
#       @total = 0
#       @discount = discount
#       @items = []
#     end
  
#     def add_item(title, amount, quantity=1)
#       self.total += amount * quantity
#       quantity.times do
#         items << title (#items reader method is in the attr_accessor)
#       end
#       self.last_transaction = amount * quantity
#     end
  
#     def apply_discount
#       if discount != 0
#         self.total = (total * ((100.0 - discount.to_f)/100)).to_i
#         "After the discount, the total comes to $#{self.total}."
#       else
#         "There is no discount to apply."
#       end
#     end
  
#     def void_last_transaction
#       self.total = self.total - self.last_transaction
#     end
#   end

# Pair Programming Session with Hamza:
# class CashRegister
#     attr_accessor :total, :discount 

#     def initialize(discount = 0)
#         @total = 0
#         @discount = discount 
#         @item = [] 
#     end 

#     def add_item(title, price, quantity = 1)
#         @last_price = price * quantity 
#         @total += @last_price 
#         quantity.times do 
#             @item << title
#         end 
#     end 

#     def apply_discount
#         if @discount > 0
#             self.total = self.total - (self.total * @discount/100)
#             "After the discount, the total comes to $#{self.total}."
#         else
#             "There is no discount to apply."
#         end 
#     end 

#     def items 
#         @item
#     end 

#     def void_last_transaction 
#         self.total = total - @last_price 
#     end 
# end 