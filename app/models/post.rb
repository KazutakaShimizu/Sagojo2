class Post < ActiveRecord::Base
	validates :name,presence: true
	validates :title,presence: true
	validates :content,presence: true
	mount_uploader :image, ImageUploader
	acts_as_taggable_on :places,:jobs # post.label_list が追加される
	acts_as_taggable            # acts_as_taggable_on :tags のエイリアス
	self.per_page = 2
end
