class Bookmark < ApplicationRecord
  # associations
  belongs_to :movie # creates a method bookmark.movie ?
  belongs_to :list # creates a method bookmark.list ?

  # validations
  # validates :column_name, whatever_validation
  validates :comment, presence: true, length: { minimum: 6 }
  validates  :list_id, presence: true, uniqueness: { scope: :movie_id }
end
