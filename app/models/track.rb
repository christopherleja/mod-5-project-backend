class Track < ApplicationRecord
    has_many :notes
    belongs_to :song
    belongs_to :user
end