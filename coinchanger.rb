def coin_checker(change)
	coin = {}
	value = {:dollar => 100, :quarter => 25, :dime => 10, :nickel => 5, :penny => 1}
	value.each do |money, amount|
		if change >= amount
			coin[money] = change / amount
			change = change % amount
		end
	end
	coin
end



# 	if change > 99
# 		coin[:dollar] = change / 100
# 		change = change % 100
# 	end

# 	if change > 24 
# 		coin[:quarter] = change / 25
# 		change = change % 25
# 	end

# 	if change > 9 
# 		coin[:dime] = change / 10
# 		change = change % 10
# 	end

# 	if change > 4 && change < 10
# 		coin[:nickel] = change / 5
# 		change = change % 5
# 	end

# 	if change > 0
# 		coin[:penny] = change
# 	end
# coin 
# end

	

	#VV the hard way

	# if change > 0 && change < 5
	# 	coin[:penny] = change
	# elsif change > 4 && change < 10
	# 	coin[:nickel] = change / 5
	# 	change = change % 5
	# 	if change > 0
	# 		coin[:penny] = change
	# 	end

	# elsif change > 9 && change < 24
	# 	coin[:dime] = change / 10
	# 	change = change % 10
	# 	if change > 4
	# 		coin[:nickel] = change / 5
	# 		change = change % 5
	# 		if change > 0
	# 			coin[:penny] = change
	# 		end
	# 	end
	
	#  elsif change > 24 
	# 		coin[:quarter] = change / 25
	# 		change = change % 25
	# 	if change > 9
	# 		coin [:dime] = change / 10
	# 		change = change % 10
	# 	end
	# 	if change > 4
	# 		coin[:nickel] = change / 5
	# 		change = change % 5
	# 	end
	# 	if change > 0
	# 		coin[:penny] = change
	# 	end
	# end
