class PortfolioCompetence < ApplicationRecord
  belongs_to :competence
  belongs_to :portfolio
  belongs_to :achievement

end
