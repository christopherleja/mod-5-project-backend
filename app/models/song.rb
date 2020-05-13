class Song < ApplicationRecord
    belongs_to :user
    has_many :tracks
    has_many :notes
end