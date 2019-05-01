class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :name
      t.date :date
      t.time :time
      t.text :phone

      t.timestamps
    end
  end
end
