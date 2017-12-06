class AdultChecker
  def initialize(user)
    @user = user
  end

  def adult?
    @user.age >= 18
  end
end

describe 'Doubles' do
  it 'vai funfar' do
    user = double('User Double')
    allow(user).to receive(:age).and_return(18)
    checker = AdultChecker.new(user)


    expect(checker.adult?).to be_truthy
  end

  it 'vai funfar' do
    user = double('User Double', :age => 18)
    checker = AdultChecker.new(user)

    expect(checker.adult?).to be_truthy
  end
end
