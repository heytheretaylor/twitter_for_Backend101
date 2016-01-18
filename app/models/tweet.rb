class Tweet < ActiveRecord::Base
	belongs_to :user
	
	before_save :write_to_console
	after_save :post_save_console
	after_create :post_save_write

	def write_to_console
		puts "about to save a tweet"
	end

		def post_save_write
		puts "A tweet was born"
	end

	def post_save_console
		puts"done saving!"
	end

	# option one
	# validates_presence_of :content
	# validates :content, numericality: { only_interger: true, message: "That ain't no number"}
	# option two
	validates :content, :length => {:maximum => 140}, :presence => true
end
