class CreateSemesters < ActiveRecord::Migration[5.1]
  def change
    create_table :semesters do |t|
      t.string :name, null: false
      t.string :description, null: false, default: ""
      t.integer :number, null: false, default: 0, unique: true
      t.references :carrer, foreign_key: true

      t.timestamps
    end
  end
end
