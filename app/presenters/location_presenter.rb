class LocationPresenter < BasePresenter
  delegate :id, :name, to: :record
end
