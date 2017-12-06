class Stack
  attr_accessor :items

  def initialize(items)
    @items = items
  end

  def top
    items.last
  end
end

describe 'Mocks' do
  it 'works' do
    items = Array.new
    expect(items).to receive(:last).and_return('top_item')
    stack = Stack.new(items)

    result = stack.top

    expect(result).to eq 'top_item'
  end
end
