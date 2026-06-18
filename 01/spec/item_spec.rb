require_relative '../lib/item'

RSpec.describe Item do
  it ' Give item have minus price, should be ...' do
    expect {
      Item.new(price: -100, name: 'Orange')
    }.to raise_error(RuntimeError, 'Price must be positive')
  end
end