class CreateCompetences < ActiveRecord::Migration[6.0]
  def change
    create_table :competences do |t|
      t.string :competence

      t.timestamps
    end
  end
end
