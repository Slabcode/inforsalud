class CreateAttendeces < ActiveRecord::Migration[5.1]
  def change
    create_table :attendeces do |t|
      t.date :day, null: false, default: Date.today

      t.timestamps
    end
  end
end
