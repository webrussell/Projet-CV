class CreateConfigs < ActiveRecord::Migration[6.0]
  def change
    create_table :configs do |t|
      t.string :nom
      t.string :post
      t.text :adresse

      t.timestamps
    end
  end
end
