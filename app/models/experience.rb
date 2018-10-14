class Experience < ApplicationRecord
  has_many :tasks, dependent: :destroy
  has_many :items, dependent: :destroy
end
