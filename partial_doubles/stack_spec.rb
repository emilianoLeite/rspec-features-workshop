require_relative '../models/stack'

describe Stack do
  subject(:stack) { Stack.new([]) }

  describe "#pop" do
    before { expect(subject).to receive(:pop).and_return 'last_item' }
    
    it 'should be empty' do
      expect(stack.pop).to eq 'last_item'
    end
  
  end
end