require 'rails_helper'

feature 'Update unit.' do
  include_examples 'current_user signed in'

  let!(:unit) { create :unit }

  scenario 'User removes unit' do
    visit(units_path(unit))
    click_link 'Delete'

    expect(page).to have_content('Unit was successfully destroyed.')
    expect(page).not_to have_content(unit.name)
  end
end
