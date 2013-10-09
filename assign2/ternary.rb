def ternarySearch(a, value, start, _end, count)
      if (start > _end)
          return false;
      end

      # First boundary: add 1/3 of length to start.
      mid1 = start + (_end-start) / 3;
      
      # Second boundary: add 2/3 of length to start.
      mid2 = start + 2*(_end-start) / 3;

      if (a[mid1] == value)
          p "ternarySearch count=#{count}"
          return mid1;
      elsif (a[mid2] == value) 
          p "ternarySearch count=#{count}"
          return mid2;
      elsif (value < a[mid1]) 
          # Search 1st third.
          return ternarySearch(a, value, start, mid1-1, count+1);
      elsif (value > a[mid2]) 
          # Search 3rd third.
          return ternarySearch(a, value, mid2+1, _end, count+1);
      else 
          # Middle third.
          return ternarySearch(a, value, mid1,mid2, count+1);
      end
end



