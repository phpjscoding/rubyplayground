require "pstore"
class Db
	def initialize
      @store = PStore.new('new.store')
	end
	def store(note)
        @store.transaction do
        	@store[note.id.to_sym] = note
        end
		
	end
	def list_all
		puts 'all notes'
		notes = []
		@store.transaction do
				@store.roots.each do | id|
				notes.push(@store[id])
			end
		end
		notes
	end

end