def coin_changer(change)
	 coins = {quarter: 0, dime: 0, nickel: 0, penny: 0}
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
	coins
end
