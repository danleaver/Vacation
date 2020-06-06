class User < ApplicationRecord
    has_many :reviews
    has_many :trips, through: :reviews
end
