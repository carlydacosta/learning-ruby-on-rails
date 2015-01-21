class Pin < ActiveRecord::Base
	# use singular user. one pin belongs to a user
	# Pin now has a user method.
	belongs_to :user

	# Here we specify that a Pin has an attached file and it is an image and has style.
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment_content_type :image, content_type: %w(image/jpeg image/jpg image/png)
end
