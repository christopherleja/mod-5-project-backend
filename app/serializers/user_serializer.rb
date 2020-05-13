class UserSerializer < ActiveModel::Serializer
  has_many :songs
  attributes :id, :username, :songs
end
