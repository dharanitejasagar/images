class Painting < ApplicationRecord
	belongs_to :gallery
	mount_uploader :image, ImageUploader
end
