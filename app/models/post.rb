class Post < ActiveRecord::Base
	validates :name,presence: true
	validates :title,presence: true
	validates :country,presence: true
	validates :content,presence: true
	mount_uploader :image, ImageUploader
end
