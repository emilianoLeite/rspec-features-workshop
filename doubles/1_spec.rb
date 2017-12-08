class AdultChecker
  def initialize(user)
    @user = user
  end

  def adult?
    @user.age >= 18
  end
end

describe 'Doubles' do
  it 'vai crashar' do
    user = double('User Double')
    checker = AdultChecker.new(user)

    expect(checker.adult?).to eq true
  end
end
