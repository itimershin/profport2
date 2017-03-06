class Book < ApplicationRecord
  has_many :author_books
  has_many :author, through: :author_books
end
