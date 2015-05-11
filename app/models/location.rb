class Location < ActiveRecord::Base
  has_many :units

  validates :name, presence: true
end
