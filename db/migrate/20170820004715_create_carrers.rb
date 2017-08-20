class CreateCarrers < ActiveRecord::Migration[5.1]
  def change
    create_table :carrers do |t|
      t.string :name, null: false, unique: true
      t.text :description, null: false, default: ""
      t.integer :semester_number, null: false, default: 1
      t.text :objective, null: false, default: ""

      t.timestamps
    end
  end
end
