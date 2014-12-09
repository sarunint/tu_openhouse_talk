class AddNameDescriptionMaxReservationsToTalks < ActiveRecord::Migration
  def change
    add_column :talks, :name, :text
    add_column :talks, :description, :text
    add_column :talks, :max_reservations, :integer
  end
end
