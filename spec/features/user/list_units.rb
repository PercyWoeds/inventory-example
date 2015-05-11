require 'rails_helper'

feature 'Lists units.' do
  let!(:unit) { create :unit }
  let(:user) { create :user, :confirmed }

  before(:each) do
    sign_in(user.email, '123456')
  end

  scenario 'User list units' do
    visit(units_path)
    expect(page).to have_content(unit.name)
  end
end
