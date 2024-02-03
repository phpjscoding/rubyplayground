require_relative "db"
class Manager
	def initialize
      @db = Db.new 
		
	end
	def store(note)
		@db.store(note)
	end
	def list
		entries = @db.list_all
		if entries.empty?
			puts 'no entries found'

		else
			entries.each do |each|
				puts each
			end
		end
	end

end