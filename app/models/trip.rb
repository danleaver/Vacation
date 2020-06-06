class Trip < ApplicationRecord
    has_many :places, dependent: :destroy
    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews
end
