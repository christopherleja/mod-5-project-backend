class TrackSerializer < ActiveModel::Serializer
  has_many :notes
  belongs_to :user
  belongs_to :song
  attributes :id, :instrument, :notes
end
