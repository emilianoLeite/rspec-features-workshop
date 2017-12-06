class Controller
  def index
    @products = Product.all
  end
end

describe 'Controller' do
  describe "#index" do
    let(:product_double) { double('Product double', all: []) }

    before { stub_const 'Product', product_double }

    it 'stubs the supplied method' do
      controller = Controller.new

      expect(controller.index).to eq []
    end
  end
end
