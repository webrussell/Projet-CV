class CreateLangues < ActiveRecord::Migration[6.0]
  def change
    create_table :langues do |t|
      t.string :nom
      t.text :description
      t.integer :note

      t.timestamps
    end
  end
end
