class CreateCarrerStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :carrer_students do |t|
      t.references :carrer_working_day, foreign_key: true
      t.references :user, foreign_key: true

      t.integer :state, default: 0, null: false
      t.date :start, null: false, default: Date.today
      t.date :end, null: true

      t.timestamps
    end
    add_index :carrer_students, [:carrer_working_day_id,:user_id], unique: true, :name => 'my_index_1'
  end
end
