class CashRegister

 attr_reader :total, :discount, :item, :price

 def initialize(discount=0)
   @total = 0
   @discount = discount
   @items = []
   @price = 0
 end

def total=(total)
  @total = total
end

def add_item(item, price, quantity=1)
  @price = price
  quantity.times do
    @items << item
    self.total += @price
  end
end

def apply_discount
  current_discount = (100.00 - @discount)/100.00
  self.total *= current_discount
  @discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{self.total.to_i}."
end

def items
  @items
end

 def void_last_transaction
   @total -= @price
 end
end
