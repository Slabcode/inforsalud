class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :name
      t.references :franchise, foreign_key: true
      t.belongs_to :professor_subject, index: { unique: true }, foreign_key: true

      t.timestamps
    end
  end
end
