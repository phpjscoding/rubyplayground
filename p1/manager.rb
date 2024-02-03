require "uri"
require "net/http"
require "json"
require_relative "coin"
class Manager
	@@repo = {}
	def initialize()
		 init_repo
	end

	def init_repo 
		response = call_api
		json = JSON.parse(response)
		for symbol,values in json
         coin = Coin.new(symbol,values['USD'],values['EUR'])
         @@repo[symbol] = coin
		end
	end

	def call_api
		url = "https://min-api.cryptocompare.com/data/pricemulti?fsyms=BTC,ETH&tsyms=USD,EUR"
	    uri= URI(url)
	    Net::HTTP.get(uri) 
	end
	def coin_list
		@@repo.keys
		
	end
	
	def calc(amount,symbol,to)
		
		coin = @@repo[symbol]
		amount*coin.send(to.to_sym)
	end

end 
