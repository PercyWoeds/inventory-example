require 'rails_helper'

feature 'Lists units.' do
  include_examples 'current_user signed in'

  let!(:unit) { create :unit }

  scenario 'User list units' do
    visit(units_path)

    expect(page).to have_content(unit.name)
    expect(page).to have_content(unit.unit_type_i18n)
    expect(page).to have_content(unit.location.name)
    expect(page).to have_content(unit.user.full_name)
  end
end
