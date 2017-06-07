class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :title
      t.string :image
      t.boolean :visible, default: true

      t.timestamps
    end
  end
end
