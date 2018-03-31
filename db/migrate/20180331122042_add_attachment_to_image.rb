class AddAttachmentToImage < ActiveRecord::Migration[5.1]
  def change
    add_attachment :images, :data
  end
end
