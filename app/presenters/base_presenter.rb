class BasePresenter
  attr_reader :model
  private :model

  # active_model
  delegate :to_model, :to_key, :to_param, :to_partial_path,
    to: :model

  def initialize(model)
    @model = model
  end
end
