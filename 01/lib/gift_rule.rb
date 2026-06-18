class GiftRule 

  GIFT_CONDITION = 3
  FREEBIE = 1
  NO_FREEBIE = 0
  
  def apply(item_count)
    item_count >= GIFT_CONDITION ? 
      FREEBIE : 
      NO_FREEBIE
  end
end