require_relative '../queries/admin_user_query'

describe AdminUserQuery do
  let(:not_admin_user) { FactoryGirl.build :user, type: 'normal' }
  let(:admin_user) { FactoryGirl.build :user }
  let(:supervisor_user) { FactoryGirl.build :user, type: 'supervisor' }
  let(:users) { [not_admin_user, admin_user, supervisor_user] }
  
  subject { described_class.new(users) }
  
  describe "#all" do
    it 'returns only admin users' do
      result = subject.all
      expect(result).to include admin_user, supervisor_user
    end
  end
end