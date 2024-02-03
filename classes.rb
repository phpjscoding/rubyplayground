class Book
	attr_accessor :title,:author
	@@counter = 0
	def initialize(title,author)
		@title = title
		@author = author
		@@counter +=1
	end
	
	URL = 'graphql.json'

		
	
	def self.counter
		@@counter
		
	end

end



b1 = Book.new('oastn','oar')
b2 = Book.new('x','y')
puts Book.counter