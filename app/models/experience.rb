class Experience < ApplicationRecord
  has_many :tasks, dependent: :destroy, :update
  has_many :items, dependent: :destroy, :update
end
