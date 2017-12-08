require 'rails_helper'

describe 'As a user', js: true, type: :feature do

  it 'I can destroy other users' do
    user = User.create(name: 'User 1', email: 'user@email.com')
    visit '/users'

    find(".js-destroy-#{user.id}").click

    page.accept_alert

    expect(page).to have_content('User was successfully destroyed')
  end
end
