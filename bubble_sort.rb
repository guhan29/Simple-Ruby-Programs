def bubble_sort(arr)
	flag = true
	while flag do
		flag = false
		for i in (0...arr.length-1)
			if arr[i] > arr[i+1]
				temp = arr[i]
				arr[i] = arr[i+1]
				arr[i+1] = temp
				flag = true
			end
		end
	end
	arr
end

p bubble_sort([4,3,78,2,0,2])