class SessionsController < ApplicationController
	def show
		url = 'https://api.myjson.com/bins/3zqi3'
		uri = URI(url)

		response = Net::HTTP.get(uri)


		@my_hash = JSON.parse(response)

		# puts my_hash["zooname"]

		# my_hash.each do |item|
		# 	puts item["animalName"]
		# end
	end
end
