class Pin < ActiveRecord::Base

	belongs_to :user	

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	
	# A pin has an attached file image
	# Also this is creating two versions of an image, a medium size and a thumbnail size
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "image/bmp"]
end