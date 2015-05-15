class UnitPresenter < BasePresenter
  delegate :inv_id, :unit_type, :name, :description, :user_id, :location_id, to: :record
  delegate :name, to: :location, prefix: true
  delegate :full_name, to: :user, prefix: true

  def unit_type
    record.unit_type.text
  end

  private

  def location
    @location ||= LocationPresenter.new(record.location)
  end

  def user
    @user ||= UserPresenter.new(record.user)
  end
end
