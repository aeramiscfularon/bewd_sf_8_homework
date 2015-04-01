class Movie < ActiveRecord::Base
  validates :title, :description, presence: true
  validates :description, length: { minimum: 10 }
  validates :year_released, numericality: { greater_than: 0 }

  def self.search(query)
    if query
  	  Movie.where('title LIKE :search OR description LIKE :search OR year_released LIKE :search', { search: "%#{query}%" })
  	else
  	  Movie.all
    end
  end
end
