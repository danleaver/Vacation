class Trip < ApplicationRecord
    has_many :places
    has_many :reviews
    has_many :users, through: :reviews
end
