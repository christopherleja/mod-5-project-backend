class User < ApplicationRecord
    has_secure_password

    validates :username, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 6 }

    has_many :songs
    has_many :tracks
end