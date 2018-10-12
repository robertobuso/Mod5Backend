class TaskSerializer < ActiveModel::Serializer
  belongs_to :experience

  attributes :category, :completed
end
