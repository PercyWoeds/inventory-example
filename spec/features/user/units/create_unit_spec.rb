require 'rails_helper'

feature 'Create unit.' do
  include_examples 'current_user signed in'

  let!(:location) { create :location }

  let!(:unit_attributes) do
    attributes_for(:unit)
      .slice(:inv_id, :name, :description)
      .merge(
        unit_type: 'Desktop',
        user: current_user.full_name,
        location: location.name
      )
  end

  scenario 'User creates unit' do
    visit(new_unit_path)

    fill_form_and_submit(:unit, :new, unit_attributes)

    expect(page).to have_content('Unit was successfully created')
    expect(page).to have_content(unit_attributes[:name])
  end
end
