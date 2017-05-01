class Comment < ApplicationRecord
  belongs_to :project
   has_many :replies,dependent: :destroy
end
