require_relative '../models/stack'

describe Stack do
  subject(:stack) { Stack.new(initial_contents) }

  context "with no items" do
    let(:initial_contents) { [] }
    it 'should be empty' do
      expect(stack.depth).to eq 0
    end

    context "when pushing" do
      before(:each) { stack.push(:an_item) }

      it 'should have one item' do
        expect(stack.depth).to eq 1
      end  
      
      specify 'the pushed item should be at the top' do 
        expect(stack.top).to eq :an_item
      end
    end

    context "when popping" do
      let(:result) { stack.pop }
      it 'raises an UnderflowError' do
        expect { result }.to raise_error Stack::UnderflowError, /empty/
      end
    end
  end

  context "with 1 item" do
  end
end
