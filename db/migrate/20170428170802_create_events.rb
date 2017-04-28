class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :summary
      t.string :location
      t.string :event_date
      t.text :approved_ids
      t.integer :max_attendees

      t.timestamps
    end
  end
end
