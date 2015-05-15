shared_context 'current_user signed in' do
  let!(:current_user) { create :user, :confirmed }

  background do
    sign_in(current_user.email, '123456')
  end
end
