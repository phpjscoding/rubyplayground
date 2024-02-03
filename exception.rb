array = [
 ['mon','tues','wedn','thu','friday'],
 [1,2,3,4,5,6,7],
 ['yes','no','maybe','possibly','probably','never','sure']
]

count = 0
search = nil

catch(:found) do
	array.each do |row|
		row.each do |item|
			count+=1
			if item == 'wedn'
				search = item
				throw(:found)
			end
		end
	end
end



puts "#{search}:#{count}"
