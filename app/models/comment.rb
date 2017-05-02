class Comment < ApplicationRecord
  belongs_to :project
   has_many :replies,dependent: :destroy
  
   mount_uploader :image, AvatarUploader
end
