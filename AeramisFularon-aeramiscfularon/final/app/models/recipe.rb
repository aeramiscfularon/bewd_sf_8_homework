class Recipe < ActiveRecord::Base
  self.inheritance_column = nil

  require 'json'

  def reddit_recipes
    json = RestClient.get('http://www.reddit.com/r/recipes.json')
    reddit_recipes = JSON.load json

    reddit = reddit_recipes['data']['children']

    reddit.each do |recipe|
      title = recipe['data']['title'].to_s
      type = recipe['data']['subreddit'].to_s
      desc = recipe['data']['selftext'].to_s
      photo_url = recipe['data']['thumbnail'].to_s
      site_url = recipe['data']['url'].to_s

      new_recipe = Recipe.new(title, type, desc, photo_url, site_url )
      @recipes << new_recipe
    end

    @recipes
  end
end
