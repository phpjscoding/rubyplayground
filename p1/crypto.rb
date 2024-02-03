require_relative 'manager' 

def slect_coin(manager,to)
	coin_list = manager.coin_list
			puts "available conins"
			puts coin_list.join(", ").center(50,"-")
			print 'Coin'
			symbol= gets.chomp.upcase
			print 'Amount'
			amount = gets.chomp.to_i
			if coin_list.include? symbol
				result = manager.calc(amount,symbol,"#{to}")
				puts "|".center(60,"|")
				puts "#{amount} of #{symbol} is currently : #{result}-#{to}"
				puts "|".center(60,"|")
			else
				puts "#{symbol} is not available in #{coin_list}"
				
			end

	
end

def  menu
	  manager = Manager.new
	loop  do
		puts "crypto currency converte".center(50,"#")
		puts "a) Convert to USD"
		puts "b) convert to EUR"
		puts "c) List coins"
		puts "q) quit"
		print "Action:"
		choice = gets.chomp

		case choice
		when 'a' then slect_coin(manager,'USD')
		when 'b' then slect_coin(manager,'EUR')

		end


		break unless choice !='q'


		
	end
	
end
menu()