require 'rspec/given'
require_relative '../queries/user_query'

describe UserQuery do
  Given(:not_admin_user) { FactoryGirl.build :user, type: 'not_admin' }
  Given(:admin_user) { FactoryGirl.build :user }
  Given(:supervisor_user) { FactoryGirl.build :user, type: 'supervisor_user' }
  Given(:users) { [not_admin_user, admin_user, supervisor_user] }
  
  Given(:subject) { described_class.new(users) }
  
  describe "#all" do
    When(:result) { subject.all }
    Then { result.all? {|admin| admin.type == 'admin'} == true }
  end
end