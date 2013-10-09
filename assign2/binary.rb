def binarySearch(a,  value,  start,  _end, count)
    # Only need to check if the erval got inverted.
    if (start > _end) 
        return false;
    end
    
    # Find the middle:
     mid = (start + _end) / 2;

    if (a[mid] == value) 
        p "binarySearch count=#{count}"
        return mid;
    elsif (value < a[mid]) 
        # Search the left half: a[start],...,a[mid-1]
        return binarySearch(a, value, start, mid-1, count+1);
    else 
        # Search the right half: a[mid+1],...,a[_end]
        return binarySearch(a, value, mid+1, _end, count+1);
    end
end


# 
# a=[1,2,3,4,5, 13, 23, 44, 333]
# binarySearch(a, 4, 0, a.length, 0)
