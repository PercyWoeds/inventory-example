class UnitForm < BaseForm
  property :inv_id
  property :unit_type
  property :location_id
  property :user_id
  property :name
  property :description
  property :out_of_order
  property :out_of_order_note

  copy_validations_from Unit

  delegate :options, to: :users, prefix: true
  delegate :options, to: :locations, prefix: true
  delegate :options, to: :unit_types, prefix: true

  private

  def unit_types
    model.class.enumerized_attributes['unit_type']
  end

  def users
    UsersPresenter.new(User.all)
  end

  def locations
    LocationsPresenter.new(Location.all)
  end
end
