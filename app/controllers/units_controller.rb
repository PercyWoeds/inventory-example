class UnitsController < ApplicationController
  before_action :authenticate_user!

  responders :collection
  respond_to :html

  expose_decorated(:unit, attributes: :unit_params, decorator: UnitPresenter)
  expose_decorated(:units, decorator: UnitsPresenter) { Unit.list(params[:page]) }

  expose(:unit_form) { UnitForm.new(unit) }

  def index
  end

  def new
  end

  def create
    unit.save
    respond_with(unit)
  end

  def edit
  end

  def update
    unit.save if unit_form.valid?
    respond_with(unit)
  end

  def destroy
    unit.destroy
    respond_with(unit)
  end

  private

  def unit_params
    params.require(:unit).permit(:inv_id, :unit_type, :name, :description, :location_id, :user_id)
  end
end
