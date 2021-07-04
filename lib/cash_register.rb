require 'pry'

class CashRegister
    attr_accessor :total, :discount, :items, :price, :previous_total

    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @items = []
        @previous_total = 0
    end

    def add_item(title, price, quantity = nil)
        if quantity == nil
            self.total += price
            self.items << title
            self.previous_total = price
        else
            self.total += price * quantity
            quantity.times do
                self.items << title
            end
            self.previous_total = price
        end
    end

    def apply_discount
        if self.discount == nil
            self.total
            "There is no discount to apply."
        else
            self.total = (self.total * (1-(self.discount.to_f/100))).to_i
            "After the discount, the total comes to $#{(self.total).to_i}."
        end
    end

    def void_last_transaction
        self.total -= self.previous_total
    end
end
