class AddCountToTalks < ActiveRecord::Migration
  def change
    add_column :talks, :count, :integer
  end
end
