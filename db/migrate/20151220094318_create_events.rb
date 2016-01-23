class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.integer :number_of_attendees

      t.timestamps null: false
    end
  end
end
