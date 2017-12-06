require_relative '../models/stack'

describe 'Stubs' do
  subject(:stack) { Stack.new(['last_item']) }

  describe "Stack#pop" do
    before { allow(subject).to receive(:pop).and_return 'new_item' }
    
    it 'stubs the supplied method' do
      expect(stack.pop).to eq 'new_item'
    end

    it 'does not stub other methods' do
      expect(stack.depth).to eq 1
      expect(stack.top).to eq 'last_item'
    end
  end
end
