class Listing < ApplicationRecord
	belongs_to :user 
	has_many :reservations
	max_paginates_per 5
	paginates_per 5
	mount_uploader :image, AvatarUploader
	scope :city, -> (aaa) {where "city ILIKE ?", "#{aaa}%" }
	scope :people, -> (no_of_people) {where "people >= ?", no_of_people}
	scope :description, -> (description) {where description: description}
	scope :price, -> (price) {where price <= "?"}



end
