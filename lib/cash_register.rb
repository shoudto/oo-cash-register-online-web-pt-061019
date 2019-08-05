class CashRegister

  attr_accessor :total, :discount
  attr_reader :items

  def initialize(total = 0, discount = 0)
    @total = total
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @previous_total = price * quantity
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if @discount != 0
      @total = @total - @discount * 10
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end
end
