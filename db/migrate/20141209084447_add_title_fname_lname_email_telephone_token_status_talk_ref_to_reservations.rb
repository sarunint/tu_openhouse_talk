class AddTitleFnameLnameEmailTelephoneTokenStatusTalkRefToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :title, :text
    add_column :reservations, :fname, :text
    add_column :reservations, :lname, :text
    add_column :reservations, :email, :text
    add_column :reservations, :telephone, :text
    add_column :reservations, :token, :text
    add_column :reservations, :status, :integer
    add_reference :reservations, :talk, index: true
  end
end
