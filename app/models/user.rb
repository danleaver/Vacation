class User < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :trips, through: :reviews

    def full_name
        "#{self.first_name} #{self.last_name}"
    end
end
