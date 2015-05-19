require 'rails_helper'

feature 'Update account with valid data' do
  include_examples 'current_user signed in'

  before(:each) do
    visit(edit_user_registration_path(current_user))
  end

  scenario 'I submit update account form with valid data' do
    fill_form_and_submit(
      :user,
      :edit,
      full_name: 'New Name',
      current_password: '123456'
    )

    expect(page).to have_content('New Name')
  end

  scenario 'Wrong current password' do
    fill_form_and_submit(
      :user,
      :edit,
      full_name: 'New Name',
      current_password: 'wrong'
    )

    expect(page).to have_content('is invalid')
  end
end
