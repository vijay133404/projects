class AddImageToReplies < ActiveRecord::Migration[5.0]
  def change
    add_column :replies, :image, :string
  end
end
