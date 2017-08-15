class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :created_at
end
