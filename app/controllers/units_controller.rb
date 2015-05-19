class UnitsController < ApplicationController
  before_action :authenticate_user!

  responders :collection
  respond_to :html

  expose_decorated(:units_list, decorator: UnitsPresenter) { Unit.list(params[:page]) }

  expose(:unit, attributes: :unit_params)
  expose(:unit_form) { UnitForm.new(unit) }

  def index
  end

  def new
  end

  def create
    unit_form.save
    respond_with(unit_form)
  end

  def edit
  end

  def update
    unit_form.save
    respond_with(unit_form)
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
