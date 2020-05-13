class SongSerializer < ActiveModel::Serializer
  belongs_to :user
  has_many :tracks
  has_many :notes
  
  
  attributes :id, :title, :tracks, :notes
end
