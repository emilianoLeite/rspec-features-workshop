describe 'Fuubar' do
  7.times do
    it 'is awesome' do
      expected = Random.rand > 0.5 ? true : false
      sleep 1
      expect(true).to be expected
    end
  end  
end