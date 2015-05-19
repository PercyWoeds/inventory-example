class LocationPresenter < BasePresenter
  delegate :id, :name, to: :model
end
