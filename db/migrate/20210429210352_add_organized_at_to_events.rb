class AddOrganizedAtToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :organized_at, :date
  end
end
