class Car < ApplicationRecord
  has_many :accidents
  has_one :drivers
end
