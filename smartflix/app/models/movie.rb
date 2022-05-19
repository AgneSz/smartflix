class Movie < ApplicationRecord
 validates :show_type, presence: true
 validates :title, presence: true
 validates :release_year, presence: true

#  enum show_type: {
#   'Movie': 0,
#   'TV Show': 1
# }
end
