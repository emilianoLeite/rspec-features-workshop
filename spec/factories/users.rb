require_relative '../../models/user'

FactoryGirl.define do
  factory :user do
    full_name "John Doe"
    type 'normal'
  end
end 
