class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
      t.string :name, unique: true, null: false
      t.integer :period, default: 1, null: false
      t.text :test
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
