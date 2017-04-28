class CreateAttendees < ActiveRecord::Migration[5.0]
  def change
    create_table :attendees do |t|
      t.integer :event_id
      t.string :first_name
      t.string :last_name
      t.string :street_address
      t.string :street_address2
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :phone
      t.string :airport
      t.string :email
      t.string :conf_num

      t.timestamps
    end
  end
end
