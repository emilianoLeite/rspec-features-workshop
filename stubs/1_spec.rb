class PingPong
  def ping
    'ping'
  end

  def pong
    'pong'
  end
end

describe 'Stubs' do
  let(:ping_pong) { PingPong.new }

  describe "PingPong#pong" do
    before { allow(ping_pong).to receive(:bong).and_return 'bling' }

    it 'stubs the supplied method' do
      expect(ping_pong.pong).to eq 'bling'
    end

    it 'does not stub other methods' do
      expect(ping_pong.ping).to eq 'ping'
    end
  end
end
