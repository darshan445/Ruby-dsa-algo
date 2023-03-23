def binary_search(arr, target)

    first = 0
    last = arr.length - 1


    while first<last

        mid = last - first / 2

        return mid if arr[mid] == target

        if arr[mid] < target
            first = mid + 1
        elsif arr[mid] > target
            last = mid - 1
        end
    end
    
    return first
end


arr = [3,5,7,9,23,45]
target = 45
puts binary_search(arr, target)
