class AddFieldsToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :starts_at, :datetime
    add_column :events, :description, :text
  end
end
