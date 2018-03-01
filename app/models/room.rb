class Room < ActiveRecord::Base
	belongs_to :user
	has_many :photos
	has_many :reservations
	geocoded_by :address
	after_validation :geocode, if: :address_changed?

	validates :home_type, :room_type, :accomodate, :bedroom, :bathroom, :listing_name, :summary,
	validates :listing_name, length: {maximum: 50}
	validates :summary, length: {maximum: 500}
end