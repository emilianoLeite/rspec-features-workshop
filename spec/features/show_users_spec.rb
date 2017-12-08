require 'rails_helper'

describe 'As a user', js: true, type: :feature do

  specify 'I can view the details of other users' do
    user = User.create(name: 'User 1', email: 'user@email.com')
    visit '/users'
    expect(page).to have_content 'Users'

    find(".js-show-#{user.id}").click

    expect(page).to have_content 'User 1'
    expect(page).to have_content 'user@email.com'
  end

  context 'inside the user details page' do
    let(:user) { User.create(name: 'User 1', email: 'user@email.com') }

    before { visit "/users/#{user.id}" }

    specify 'I can go back to the users list' do
      click_link 'Back'

      expect(page.current_path).to eq(users_path)
    end
  end
end
