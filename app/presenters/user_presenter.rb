class UserPresenter < BasePresenter
  # Devise compability
  delegate :is_a?, to: :model
  delegate :id, :email, :full_name, to: :model

  def full_name_with_email
    "#{model.full_name} (#{model.email})"
  end
end
