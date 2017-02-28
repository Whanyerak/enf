class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :happen_on
      t.string :place
      t.boolean :parents

      t.timestamps
    end
  end
end
