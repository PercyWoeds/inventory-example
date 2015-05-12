class UnitPresenter < BasePresenter
  delegate :unit_type, :name, to: :record

  def location_name
    record.location.name
  end
end
