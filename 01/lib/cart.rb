require_relative 'discount_rule'
require_relative 'gift_rule'

class Cart

  def initialize(items)
    @items = items
  end

  def total_amount
    total = @items.sum(&:price)
    DiscountRule.new.apply(total)
  end

  def gift
    GiftRule.new.apply(@items.count)
  end
end
