require 'rails_helper'

describe 'As a user', js: true, type: :feature do

  it 'I can edit users' do
    # List page
    user = User.create(name: 'User 1', email: 'user@email.com')
    visit '/users'

    find(".js-edit-#{user.id}").click

    # Edit page
    expect(page.current_path).to eq(edit_user_path(user))

    fill_in 'Name', with: 'User 2'
    click_button 'Update User'

    # Update redirects to list page
    expect(page.current_path).to eq(users_path)

    # Check flash message
    expect(page).to have_content 'User was successfully updated'

    first_tr = find('table tbody tr')

    within(first_tr) do
      expect(page).to have_content 'User 2'
      expect(page).to have_content 'user@email.com'
    end
  end
end
