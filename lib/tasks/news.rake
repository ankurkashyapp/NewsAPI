namespace :news do
	desc "Scheduler for Updating the news feed"

	task update: :environment do
		 	puts "************News feed updated*************"
		 	User.display_news
	end
end