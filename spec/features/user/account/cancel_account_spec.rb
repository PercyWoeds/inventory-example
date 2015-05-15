require 'rails_helper'

feature 'Cancel account' do
  include_examples 'current_user signed in'

  scenario 'I cancel my account' do
    visit(edit_user_registration_path(current_user))
    click_link 'Cancel my account'

    expect(page).to have_content('Sign in')
    expect(page).to have_content('Bye! Your account was successfully cancelled. We hope to see you again soon.')

    visit(new_user_session_path)
    sign_in(current_user.email, '123456')

    expect(page).to have_content('Invalid email or password.')
  end
end
