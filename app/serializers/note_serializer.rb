class NoteSerializer < ActiveModel::Serializer
  belongs_to :track
  belongs_to :song

  attributes :id, :time, :duration, :endTime, :pitch
end
