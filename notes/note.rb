require "securerandom"
class Note
	attr_accessor :id
   def initialize(text)
   	@id = SecureRandom.uuid
   	@text = text
   	@date = Time.now
   end
   def to_s
  formatted_date = @data ? @data.strftime("%Y-%m-%d-%H:%M:%S") : "Unknown Date"
  "Date:#{formatted_date}\nNote:#@text"
   end
end
