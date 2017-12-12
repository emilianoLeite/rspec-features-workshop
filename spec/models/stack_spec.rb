require_relative '../../models/stack'

describe Stack do
  subject(:stack) { described_class.new(initial_contents) }

  context "with no items" do
    let(:initial_contents) { [] }

    describe '#depth' do
      it 'has no depth' do
        expect(stack.depth).to eq 0
      end
    end

    describe '#top' do
      specify 'top of the stack should be empty' do
        expect(stack.top).to eq nil
      end
    end

    describe '#pop' do
      it 'raises an UnderflowError' do
        expect { stack.pop }.to raise_error Stack::UnderflowError, /empty/
      end
    end

    describe '#push' do
      it 'should have one item' do
        stack.push(:an_item)

        expect(stack.depth).to eq 1
      end

      specify 'the pushed item should be at the top' do
        stack.push(:an_item)

        expect(stack.top).to eq :an_item
      end
    end
  end
end
