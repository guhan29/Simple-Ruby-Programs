def ceaser_chiper(text, key)
	text = text.split("")
	text.map! do |ch|
		if ch.ord >= 65 && ch.ord <= 90
			if ch.ord + key > 90
				(65 + (ch.ord + key)%91).chr
			else
				(ch.ord + key).chr
			end
		elsif ch.ord >= 97 && ch.ord <=122
			if ch.ord + key > 122
				(97 + (ch.ord + key)%123).chr
			else
				(ch.ord + key).chr
			end
		else
			ch
		end	
	end
	text.join
end

puts ceaser_chiper("What a string!", 5)