class Project < ApplicationRecord
	belongs_to :category
	 has_many :comments
  validates :title, presence: true,
                    length: { minimum: 5 }
                    
	mount_uploader :document, AvatarUploader
end
