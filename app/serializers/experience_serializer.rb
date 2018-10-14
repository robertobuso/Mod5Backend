class ExperienceSerializer < ActiveModel::Serializer
  has_many :items
  has_many :tasks

  attributes :id, :status, :audio, :flower_one, :flower_two, :flower_three, :drag_book, :take_flower_one
end
