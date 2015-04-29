class Recipe < ActiveRecord::Base
  self.inheritance_column = nil
  
  validates :title, :desc, :photo_url, :site_url, presence: true
  validates :desc, length: { minimum: 10 }
end
