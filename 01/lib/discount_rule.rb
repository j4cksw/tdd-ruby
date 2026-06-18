class DiscountRule

  CONDITION_PRICE = 1000
  DISCOUNT_RATE = 0.9
  
  def apply(total)
    total >= CONDITION_PRICE ? 
      total * DISCOUNT_RATE : 
      total
  end
end