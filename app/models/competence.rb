class Competence < ApplicationRecord
  has_many :portfolio_competences
  has_many :portfolios, through: :portfolio_competences
  validates :name, presence: true
  validates :author, presence: true

end
