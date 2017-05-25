class AddPinnedToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :pinned, :boolean
  end
end
