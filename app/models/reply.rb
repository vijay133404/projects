class Reply < ApplicationRecord
  belongs_to :comment
  mount_uploader :image, AvatarUploader
end
