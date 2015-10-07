class Post < ActiveRecord::Base
	validates :name,presence: true
	validates :title,presence: true
	validates :country,presence: true
	validates :content,presence: true
	mount_uploader :image, ImageUploader
	acts_as_taggable_on :places # post.label_list が追加される
	acts_as_taggable            # acts_as_taggable_on :tags のエイリアス
end
