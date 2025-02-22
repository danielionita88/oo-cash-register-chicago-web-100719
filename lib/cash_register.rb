class CashRegister
attr_accessor :total, :discount, :last_transaction

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @cart = []
    end

    def add_item(title, price, quantity=1)
        self.total += price * quantity
        quantity.times {@cart << title}
        self.last_transaction = price * quantity
    end

    def apply_discount
        if @discount > 0
        self.total -= (self.total * @discount)/100
        "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def items
       @cart
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end
end