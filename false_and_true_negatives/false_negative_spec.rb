require_relative '../queries/user_query'

describe UserQuery do
  let(:not_admin_user) { FactoryGirl.build :user, type: 'not_admin' }
  let(:admin_user) { FactoryGirl.build :user }
  let(:users) { [not_admin_user, admin_user] }
  
  subject { described_class.new(users) }
  
  describe "#all" do
    it 'returns only admin users' do
      result = subject.all
      result.each do |admin| 
        expect(admin.type).to eq 'admin'
      end
    end
  end
end