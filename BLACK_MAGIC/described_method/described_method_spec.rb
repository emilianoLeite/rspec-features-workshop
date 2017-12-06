require_relative '../../models/stack'

describe Stack do
  subject(:stack) { Stack.new(['first_item', 'second_item']) }

  describe "#top", described_method: true do
    context "with no items" do
        it 'should be empty'
    end

    context "with items" do
      it 'returns the top of the stack' do
        expect(described_method).to eq 'second_item'
      end
    end
  end
end
