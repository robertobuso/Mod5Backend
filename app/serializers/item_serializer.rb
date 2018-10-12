class ItemSerializer < ActiveModel::Serializer
  belongs_to :experience

  attributes :category, :inventory, :in_vase
end
