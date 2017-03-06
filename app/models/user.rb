class User < ApplicationRecord
  has_one :portfolio
  has_many :competences, through: :portfolio_competences
  has_many :achievements, through: :portfolio_competences
  validates :email, presence: true
  validates :password, length: 6..20
  has_secure_password


end
