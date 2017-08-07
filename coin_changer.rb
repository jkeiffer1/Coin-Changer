 
def coin_changer(change)
	 coins = {quarter: 0, dime: 0, nickel: 0, penny: 0}
	
	#  coin_value = {}

	#  coin_value.each do |coin,value|
	#  	while
	#  		value <= cents

	#  		coins[coin] += 1
	#  		cents = cents - value
	#  	end
	#  end
	# end

	# if change  == 1
	# 	{quarter: 0, dime: 0, nickel: 0, penny: 1}
	# elsif change == 5
	# 	{quarter: 0, dime: 0, nickel: 1, penny: 0}
	# elsif change == 10
	# 	{quarter: 0, dime: 1, nickel: 0, penny: 0}
	# elsif change == 25
	# 	{quarter: 1, dime: 0, nickel: 0, penny: 0}
	
	# end
	while change > 0 do
		if change  >=25
			change -= 25
			coins[:quarter] += 1
		elsif change >= 10
			change -= 10
			coins[:dime] += 1
		elsif change >= 5 
			change -= 5
			coins[:nickel] += 1
		elsif change >= 1
			change -= 1
			coins[:penny] += 1
		end
	end
	
	if coins[:quarter] > 1
		qua = coins[:quarter]
		coins.delete(:quarter)
		coins[:quarters] = qua
	end

	if coins[:dime] > 1
		dim = coins[:dime]
		coins.delete(:dime)
		coins[:dimes] = dim
	end

	if coins[:penny] > 1
		pen = coins[:penny]
		coins.delete(:penny)
		coins[:pennies] = pen
	end


	coins.each do |key,value|
		if value.to_i == 0
			coins.delete(key)
		end
	end

	woop = ""
	coins.each_with_index do |(coin,value),index|
		if index < coins.length-1
			woop << "#{value} #{coin}, "
		else
			woop << "and #{value} #{coin}."
	end
end
"#{woop}"
end
#p coin_changer(12)
