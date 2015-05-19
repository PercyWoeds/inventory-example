class UnitPresenter < BasePresenter
  delegate :inv_id, :unit_type, :name, :description, :user_id, :location_id, to: :model
  delegate :name, to: :location, prefix: true
  delegate :full_name, to: :user, prefix: true

  def unit_type
    model.unit_type.text
  end

  private

  def location
    @location ||= LocationPresenter.new(model.location)
  end

  def user
    @user ||= UserPresenter.new(model.user)
  end
end
