class ExperienceSerializer < ActiveModel::Serializer
  has_many :items
  has_many :tasks

  attributes :id, :status, :audio
end
