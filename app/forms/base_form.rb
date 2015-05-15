class BaseForm < Reform::Form
  include ModelReflections
  extend ActiveModel::ModelValidations
end
