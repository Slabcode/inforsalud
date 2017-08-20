class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.date :date, null: false
      t.string :description, null: false, default: ""
      t.decimal :value, null: false
      t.integer :method, null: false
      t.text :file
      t.belongs_to :semester_student, index: { unique: true }, foreign_key: true

      t.timestamps
    end
  end
end
