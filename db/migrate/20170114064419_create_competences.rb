class CreateCompetences < ActiveRecord::Migration[5.0]
  def change
    create_table :competences do |t|
      t.string :name, presence: true
      t.string :author, presence: true

      t.timestamps
    end
  end


end
