class UserAuthenticator
  def self.authenticate(user)
    user.password.valid?
  end
end

class ProductsController
  def index
    authenticated = UserAuthenticator.new(current_user).authenticate
    if authenticated
      Product.all
    else
      Product.none
    end
  end
end

describe ProductsController do
  context 'when the user has valid credentials' do
    before do
      allow(UserAuthenticator).to receive(:authenticate).and_return(true)
    end

    it 'returns all products'
  end

  context 'when the user has valid credentials' do
    before do
      allow(UserAuthenticator).to receive(:authenticate).and_return(false)
    end

    it 'returns no products'
  end

end
