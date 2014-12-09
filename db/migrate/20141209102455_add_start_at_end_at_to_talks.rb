class AddStartAtEndAtToTalks < ActiveRecord::Migration
  def change
    add_column :talks, :start_at, :datetime
    add_column :talks, :end_at, :datetime
  end
end
