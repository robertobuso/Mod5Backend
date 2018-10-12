class Experience < ApplicationRecord
  has_many :tasks
  has_many :items
end
