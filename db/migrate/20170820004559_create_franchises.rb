class CreateFranchises < ActiveRecord::Migration[5.1]
  def change
    create_table :franchises do |t|
      t.string :name, null: false, unique: true
      t.string :address, null: false
      t.text :description, null: false, default: ""

      t.timestamps
    end
  end
end
