require_relative "manager"
require_relative "note"
module App
	def self.run
        opps = Opps.new
		begin
		puts 'Chose an option'.center(50,'<')
		puts "a) Add note"
		puts "b) Delete note"
		puts "c) Edit note"
		puts "d) Show all notes"
		puts "q) Quit"
		choice = gets.chomp
		case choice
			when 'a' then opps.add
			when 'b' then opps.delete
			when 'c' then opps.edit
			when 'd' then opps.list
		end
			
		end while choice != 'q'
		
	end
	class Opps
	def initialize
		@manager = Manager.new
	end
	def add()
	content = gets.chomp
	 note = Note.new(content)
	 @manager.store(note)
    puts 'your note is '+"#{content}".center(5,'*')

	end
	def delete
		puts 'delete'
		
	end
	def edit
		puts 'editing'
	end
	def list
		@manager.list
	end

end

	
end

