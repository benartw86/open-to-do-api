class ListSerializer < ActiveModel::Serializer
  attributes :id, :title, :private, :user_id
end
