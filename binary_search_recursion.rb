def binary_search(arr, target, first, last)
    
    mid = last - first / 2

    return mid if arr[mid] == target
    return "Number not present" if first > last
    if arr[mid] > target
        binary_search(arr, target, 0, mid - 1 )        
    elsif arr[mid] < target
        binary_search(arr, target, mid + 1, arr.length - 1 )
    end

end

arr = [3,5,7,9,23,45]
target = 80
puts binary_search(arr, target, 0, arr.length-1 )