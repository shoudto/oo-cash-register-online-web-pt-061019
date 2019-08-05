class CashRegister

  attr_accessor :total, :discount

  def initialize(total = 0, discount = 0)
    @total = total
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @previous_total = price * quantity
  end
end
