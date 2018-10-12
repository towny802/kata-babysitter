class CreateNights < ActiveRecord::Migration[5.2]
  def change
    create_table :nights do |t|
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
