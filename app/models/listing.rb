class Listing < ApplicationRecord
	belongs_to :user 
	has_many :reservations
	max_paginates_per 5
	paginates_per 5
	mount_uploader :image, AvatarUploader
end
