require 'rails_helper'

feature 'Sign out' do
  include_examples 'current_user signed in'

  scenario 'Logged in user signs out' do
    click_link 'Sign out'

    expect(page).to have_content('Sign in')
  end
end
