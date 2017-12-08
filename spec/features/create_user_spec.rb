require 'rails_helper'

describe 'As a user', js: true, type: :feature do

  it 'I can create other users' do
    # List page
    visit '/users'

    sleep 1

    click_link 'New User'
    sleep 1
    # New page
    expect(page.current_path).to eq(new_user_path)

    fill_in 'Name', with: 'User 1'
    sleep 1
    check('Admin')
    sleep 1
    fill_in 'Email', with: 'user@email.com'
    sleep 1
    click_button 'Create User'

    # Creation redirects to list
    expect(page.current_path).to eq(users_path)

    sleep 1
    # Check flash message
    expect(page).to have_content 'User was successfully created.'

    first_tr = find('table tbody tr')

    within(first_tr) do
      expect(page).to have_content 'User 1'
      expect(page).to have_content 'user@email.com'
    end
  end
end
