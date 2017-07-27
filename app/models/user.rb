class User < ApplicationRecord
	require 'rubygems'
	require 'nokogiri'
	require 'open-uri'

	has_many :posts

	def self.display_news
		page = Nokogiri::HTML(open("http://www.jagran.com/local/uttar-pradesh_saharanpur-news-hindi.html"))
		puts "*****************************************************"
		articlesList = page.css('.listing').css('li')
		articlesList.each do |article|
			puts article.css('h2').css('a').first['title']
		end
	end
end
