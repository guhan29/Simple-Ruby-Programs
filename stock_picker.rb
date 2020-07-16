def stock_picker(arr)
	max = 0
	for i in (0...arr.length)
		for j in (i+1...arr.length)
			if arr[j] - arr[i] > max
				max = arr[j] - arr[i]
				max_arr = [i, j]
			end
		end
	end
	max_arr
end

p stock_picker([17,3,6,9,15,8,6,1,10])