require_relative '../queries/admin_user_query'

describe AdminUserQuery do
  let(:not_admin_user) { FactoryGirl.build :user, type: 'normal' }
  let(:admin_user) { FactoryGirl.build :user }
  let(:users) { [not_admin_user, admin_user] }
  
  subject { described_class.new(users) }
  
  describe "#all" do
    it 'returns only admin users' do
      result = subject.all
      result.each do |user|
        expect(user.type).to eq 'admin'
      end
    end
  end
end