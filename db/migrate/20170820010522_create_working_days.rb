class CreateWorkingDays < ActiveRecord::Migration[5.1]
  def change
    create_table :working_days do |t|
      t.integer :day, null: false, default: 0
      t.integer :time, null: false, default: 0
      t.string :description, null: false, defautl: ""

      t.timestamps
    end
  end
end
