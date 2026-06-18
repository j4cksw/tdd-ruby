require_relative '../lib/cart'
require_relative '../lib/item'

RSpec.describe Cart do
  
  # Total amount rule
  it 'Given empty item, total amount should be 0' do
    cart = Cart.new([])

    expect(cart.total_amount).to eq(0)
  end

  it 'Given one item with price 10, total amount should be 10' do
    cart = Cart.new([Item.new(price: 10, name: 'Apple')])

    expect(cart.total_amount).to eq(10)
  end

  it 'Give 2 items with price 500 and 400, total amount should be 900' do 
    cart = Cart.new([
      Item.new(price: 500, name: 'Apple'), 
      Item.new(price: 400, name: 'Banana')])

    expect(cart.total_amount).to eq(900)
  end

  # Discount rule
  it 'Give 2 items with price 600 and 600, total amount should be 1080' do 
    cart = Cart.new([
      Item.new(price: 600, name: 'Apple'), 
      Item.new(price: 600, name: 'Banana')])

    expect(cart.total_amount).to eq(1080)
  end

  # Gift rule
  it 'Given empty items, get 0 gift' do
    cart = Cart.new([])

    expect(cart.gift).to eq(0)
  end

  it 'Given 2 items, get 0 gift' do
    cart = Cart.new([
      Item.new(price: 600, name: 'Apple'), 
      Item.new(price: 600, name: 'Banana')])

    expect(cart.gift).to eq(0)
  end

  it 'Given 3 items, get 1 gift' do
    cart = Cart.new([
      Item.new(price: 100, name: 'Orange'),
      Item.new(price: 600, name: 'Apple'), 
      Item.new(price: 600, name: 'Banana')])

    expect(cart.gift).to eq(1)
  end
  it 'Given 4 items, get 1 gift' do
    cart = Cart.new([
      Item.new(price: 100, name: 'Pineapple'),
      Item.new(price: 100, name: 'Orange'),
      Item.new(price: 600, name: 'Apple'), 
      Item.new(price: 600, name: 'Banana')
    ])

    expect(cart.gift).to eq(1)
  end

end