class CreatePortfolioCompetences < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolio_competences do |t|
      t.references :competence, foreign_key: true
      t.references :portfolio, foreign_key: true

      t.timestamps
    end
  end
end
