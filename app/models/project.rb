class Project < ApplicationRecord
	belongs_to :category
	 has_many :comments,dependent: :destroy          
	mount_uploader :document, AvatarUploader
end
