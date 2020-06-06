class Address < ApplicationRecord
  belongs_to :place

  def full_address
    "#{self.street}, #{self.city}, #{self.state}  #{self.zip}"
  end
end
