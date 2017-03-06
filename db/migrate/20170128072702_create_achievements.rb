class CreateAchievements < ActiveRecord::Migration[5.0]
  def change
    create_table :achievements do |t|
      t.text :description, null: false
      t.integer :status, default: 0
      t.references :portfolio_competences, foreign_key: true

      t.timestamps
    end
  end
end
