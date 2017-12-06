class A
  def self.foo
    'bar'
  end

  def bar
    'foo'
  end
end

describe A do
  describe 'described_class' do
    it 'works' do
      expect(described_class.foo).to eq 'bar'
    end
  end

  describe 'subject' do
    it 'works' do
      expect(subject.bar).to eq 'foo'
    end
  end
end
