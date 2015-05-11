class UnitsController < ApplicationController
  before_action :authenticate_user!
  expose_decorated(:units, decorator: UnitsPresenter)

  def index
  end
end
