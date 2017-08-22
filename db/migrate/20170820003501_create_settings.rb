class CreateSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :settings do |t|
      t.integer :name, null:false, unique: true
      t.boolean :value, default: false

      t.timestamps
    end
  end
end
