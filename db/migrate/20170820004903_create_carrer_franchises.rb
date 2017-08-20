class CreateCarrerFranchises < ActiveRecord::Migration[5.1]
  def change
    create_table :carrer_franchises do |t|
      t.references :franchise, foreign_key: true
      t.references :carrer, foreign_key: true

      t.timestamps
    end
    add_index :carrer_franchises, [:franchise_id,:carrer_id], unique: true

  end
end
