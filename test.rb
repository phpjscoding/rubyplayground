# def smash(words)
#   print words.join(' ')
   
# end

# smash(["hello", "world"])
# count_by(2,5) #should return [2,4,6,8,10]
# increment by x untill x is n
# def count_by(x, n)
#     arr = []
#     n.times do |i|
#       arr << x * (i+1)
#     end
#     return arr
# end 

# count_by(3,5)  

# def positive_sum(arr)
#   sum = 0
#   arr.each do | n|
#     sum+=n if n >= 0
#   end
#   sum
# end

# print "wonderfoull".reverse
# def find_needle(haystack)
#   #your code here
#   if haystack.include?'needle' 
#    return "found the needle at position #{haystack.index('needle')}"
#   end
# end

# find_needle(["hay", "junk", "hay", "hay", "moreJunk", "needle", "randomJunk"])
# def no_space(x)
#   puts x.delete(' ')
# end
# no_space('jfBm  gk lf8hg  88lbe8 ')
# def grow(x) 
#   sum = 1 
#   x.each do |n|
#    sum *= n
#   end
#  sum
# end
# grow([2, 2, 2, 2, 2, 2])
# arr = [true,  true,  true,  false,
#   true,  true,  true,  true ,
#   true,  false, true,  false,
#   true,  false, false, true ,
#   true,  true,  true,  true ,
#   false, false, true,  true,'monday']

# def countSheeps array
#    # array.select{|el| el==true}.length
#    puts array.count('monday')
# end
# countSheeps(arr)

# def dna_to_rna(dna)
#   #global substitution)
#   dna.gsub('T','U')
# end
# dna_to_rna('TTRTT')
# def digitize(n)
#    n.to_s.chars.map(&:to_i).reverse
     # n.digits
# end
# digitize(35231)

# def abbrev_name(name)
#     arr = name.upcase.split(' ')
#     x,y = arr.first[0],arr.last[0]
#     [x,y].join(".")
# end

# abbrev_name("David Mendieta")
# class String
#   def toJadenCase
#     self.split().map(&:capitalize).join(' ')
#   end
# end
# str = "How can mirrors be real if our eyes aren't real"
# str.toJadenCase()
# def descending_order(n)
#   print n.to_s.split('').map(&:to_i).sort.reverse.join.to_i
# end
# descending_order(0)
# def make_negative(num)
#  print num < 0? num: num * -1
# end
# make_negative 4
# puts Time.now
# def sum_two_smallest_numbers(numbers)
#    # arr = numbers.sort
#    # x,y =  arr[0],arr[1]
#    # x + y
#    puts numbers.min(2).sum
# end
# sum_two_smallest_numbers([25, 42, 71, 12, 18, 22])
# def XO(str)
#   #your code here
#   puts str.upcase.count('O') == str.upcase.count('X')
# end
# XO("abc")
# def greet(name)
#   "Hello, #{name} how are you doing today?"
# end

# greet("Shingles")
# def remove_char(s)
#    s[1..-2]
# end
# remove_char('anderson')
# def binary_array_to_number(arr)
#     arr.join.to_i(2)
# end 
# binary_array_to_number([0,1,1,0])
# Given two integers a and b, which can be positive or negative, find the sum of all the integers between and including them and return it. If the two numbers are equal return a or b.

# Note: a and b are not ordered!
# def get_sum(a,b)
#     a,b= [a,b].sort
#     (a..b).sum
# end
# get_sum(2,2)
# # --------------------------
# There is a bus moving in the city which takes and drops some people at each bus stop.

# You are provided with a list (or array) of integer pairs. Elements of each pair represent the number of people that get on the bus (the first item) and the number of people that get off the bus (the second item) at a bus stop.

# Your task is to return the number of people who are still on the bus after the last bus stop (after the last array). Even though it is the last bus stop, the bus might not be empty and some people might still be inside the bus, they are probably sleeping there :D
#  def number(bus_stops)
#      on,off=0,0
#      bus_stops.each do |arr|
#        on += arr[0]
#        off += arr[1]
#      end
#      on - off
# end
# number([[3, 0], [9, 1], [4, 8], [12, 2], [6, 1], [7, 8]])
# -------------------------------------------------------------
# Write function bmi that calculates body mass index (bmi = weight / height2).

# if bmi <= 18.5 return "Underweight"

# if bmi <= 25.0 return "Normal"

# if bmi <= 30.0 return "Overweight"

# if bmi > 30 return "Obese"
# def bmi(weight, height)
#   r = weight / (height**2)

#   case r
#   when -Float::INFINITY..18.5
#     'Underweight'
#   when 18.6..25.0
#     'Normal'
#   when 25.1..30.0
#     'Overweight'
#   when 30.1..Float::INFINITY
#     'Obese'
#   else
#     'Invalid BMI calculation'
#   end
# end
# puts bmi(100, 1.80)
# -------------------------------------
# DESCRIPTION:
# You were camping with your friends far away from home, but when it's time to go back, you realize that your fuel is running out and the nearest pump is 50 miles away! You know that on average, your car runs on about 25 miles per gallon. There are 2 gallons left.

# Considering these factors, write a function that tells you if it is possible to get to the pump or not.

# Function should return true if it is possible and false if not.
# def filter_list(arr)
#      # non_strings = array.select { |element| !element.is_a?(String) }

#    non_strings = arr.select { |n| !n.is_a?String }
#    puts non_strings

# end
# filter_list([1,2,'aasf','1','123',123])
# accum("abcd") -> "A-Bb-Ccc-Dddd"
# accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
# accum("cwAt") -> "C-Ww-Aaa-Tttt"
def accum(s)
      arr = []
     s.chars.each_with_index do |v,i|
          (i+1).times do |index|
               index == 0 ? arr.push('-'+v.upcase) : arr.push(v.downcase) 
          end
     end
     re = arr.join('')[1..-1]
   

end
  # s.chars.each_with_index.map{ |c, i| c.upcase + c.downcase * i }.join('-')

 accum("ZPGLNRXQENU") 
 # Expected: "Z-Pp-Ggg-Llll-Nnnnn-Rrrrrr-Xxxxxxx-Qqqqqqqq-Eeeeeeeee-Nnnnnnnnnn-Uuuuuuuuuuu", instead got: "Z-Pp-Ggg-Llll-Nnnnn-RRRRRR-Xxxxxxx-Qqqqqqqq-Eeeeeeeee-Nnnnnnnnnn-UUUUUUUUUUU"
 def sum_array(arr)
      if arr && arr.length > 2
         min_i = arr.index(arr.min)
         arr.delete(arr[min_i])
         max_i = arr.index(arr.max)
         arr.delete(arr[max_i])
         
         print max_i,min_i
     else
           0  
      end

end
sum_array([6, 0, 1, 10, 10])
# Sum all the numbers of a given array ( cq. list ), except the highest and the lowest element ( by value, not by index! ).