class BigovensController < ApplicationController
  require 'open-uri'
  require 'nokogiri'

  def index
  end

  def show
  	@bigoven = Bigoven.find(params[:id])
  end

  def random
  	apiKey = 'dvxG6tyf7abmXmk082y5a85JeM4ewnu0'
    # @bigoven = Bigoven.offset(rand(Bigoven.count)).first
    @bigoven = rand(1..350000)
    doc = Nokogiri::XML(open('http://api.bigoven.com/recipe/' + @bigoven.to_s + '?api_key=' + apiKey))
    if doc
      @bigoven = rand(1..350000)
      doc = Nokogiri::XML(open('http://api.bigoven.com/recipe/' + @bigoven.to_s + '?api_key=' + apiKey))
    end
    @title = doc.at_css('Recipe Title').children
    @site_url = doc.at_css('Recipe WebURL').children
    @cuisine = doc.at_css('Recipe Cuisine').children
    @category = doc.at_css('Recipe Category').children
    render :show
  end
end
