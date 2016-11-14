class Animal < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	mount_uploader :photos, ImageUploader
	validates :name, :location, :age, presence: true
end
