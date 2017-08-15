class ItemSerializer < ActiveModel::Serializer
  attributes :id, :body, :completed, :list_id
end
