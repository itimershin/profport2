class Portfolio < ApplicationRecord
  belongs_to :user
  has_many :portfolio_competences
  has_many :competences, through: :portfolio_competences
  has_many :achievements, through: :portfolio_competences
end
