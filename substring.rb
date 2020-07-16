def substrings(word, arr)
	word.downcase!
	word = word.split(" ")
	# puts word
	hsh = Hash.new(0)
	arr.each do |ch|
		ch.downcase!
		word.each do |wo|
			if wo =~ /#{ch}/
				hsh[ch] += 1
			end
		end
	end
	hsh
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)