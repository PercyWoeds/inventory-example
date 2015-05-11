class UnitPresenter < ApplicationPresenter
  delegate :name, to: :record
end
