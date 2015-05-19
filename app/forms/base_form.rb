class BaseForm < Reform::Form
  include ModelReflections
  extend ActiveModel::ModelValidations

  def save
    valid? && super
  end
end
