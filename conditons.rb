def is_palindrom(word)
	return true if word.length == 1
	return false if word[0] != word[-1]
	is_palindrom(word[1,word.length-2])
end 

puts 'find if word is palindrom'
word = gets.chomp
person = {name:'anderson',age:84,isadmin:true}

i = 0
while i < person.length
	puts "#{person.keys[i]}--#{person.values[i]}"
	i+=1
end