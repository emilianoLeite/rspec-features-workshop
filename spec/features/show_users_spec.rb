require 'rails_helper'

describe 'As a user', js: true, type: :feature do
  before do
    User.create(name: 'User 1', email: 'user@email.com')
  end

  it 'I can view the details of other users' do
    visit '/users'
    expect(page).to have_content 'Users'
    user = User.first

    find(".js-show-#{user.id}").click

    expect(page).to have_content 'User 1'
    expect(page).to have_content 'user@email.com'
  end
end
