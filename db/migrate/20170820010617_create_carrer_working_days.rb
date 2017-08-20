class CreateCarrerWorkingDays < ActiveRecord::Migration[5.1]
  def change
    create_table :carrer_working_days do |t|
      t.references :working_day, foreign_key: true
      t.references :carrer_franchise, foreign_key: true

      t.timestamps
    end
    add_index :carrer_working_days, [:working_day_id,:carrer_franchise_id], unique: true, :name => 'my_index'
  end
end
