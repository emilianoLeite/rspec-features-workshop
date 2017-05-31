require_relative '../models/stack'

describe Stack do
  subject(:stack) { Stack.new([]) }

  context "with no items" do
    describe "#top", described_method: true do
      it 'should be empty' do
        expect(described_method).to eq 0
      end
    end
  end
end
