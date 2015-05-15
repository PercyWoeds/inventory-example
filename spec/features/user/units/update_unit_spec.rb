require 'rails_helper'

feature 'Update unit.' do
  include_examples 'current_user signed in'

  let!(:unit) { create :unit }

  let!(:unit_attributes) do
    attributes_for(:unit).slice(:inv_id, :name, :description)
  end

  scenario 'User updates unit' do
    visit(edit_unit_path(unit))

    fill_form_and_submit(:unit, :update, unit_attributes)

    expect(page).to have_content('Unit was successfully updated')
    expect(page).to have_content(unit_attributes[:name])
  end
end
