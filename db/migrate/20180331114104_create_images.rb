class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.references :imageable, polymorphic: true, index: true
      t.string :title
      t.timestamps
    end
  end
end
