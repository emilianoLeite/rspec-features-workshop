describe 'Rspec Rainbow' do
  7.times do
    it 'is fabulous' do
      expected = Random.rand > 0.5 ? true : false
      sleep 1
      expect(true).to be expected
    end
  end  
end