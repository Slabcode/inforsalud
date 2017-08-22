class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.string :name, null: false
      t.string :description, null: false, default: ""
      t.text :file
      t.references :professor, foreign_key: true

      t.timestamps
    end
  end
end
