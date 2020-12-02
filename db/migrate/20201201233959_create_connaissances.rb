class CreateConnaissances < ActiveRecord::Migration[6.0]
  def change
    create_table :connaissances do |t|
      t.string :nom
      t.text :description

      t.timestamps
    end
  end
end
