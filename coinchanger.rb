def coin_checker(change)
	coin = {}

	if change > 0 && change < 5
		coin[:penny] = change
	elsif change > 4 && change < 10
		coin[:nickel] = change / 5
		change = change % 5
		if change > 0
			coin[:penny] = change
		end

	elsif change > 9 && change < 25
		coin[:dime] = change / 10
		change = change % 10
		if change > 4
			coin[:nickel] = change / 5
			change = change % 5
			if change > 0
				coin[:penny] = change
			end
		end
	

	elsif change > 24 
		coin[:quarter] = change / 25
		change = change % 25
		if change > 0 && change < 4
			coin[:penny] = change
			if change > 4 
					coin[:nickel] = change / 5
					change = change % 5
				if change > 9
					coin [:dime] = change / 10
					change = change % 10
				end
			end
		end
	end

	
	coin
end



	# coin_value = {"penny" => 1, "nickel" => 5, "dime" => 10, "quarter" =>25}




	