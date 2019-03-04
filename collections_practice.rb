# your code goes here
def begins_with_r(array)
  if array.length>0
    i=0
    while i<array.length
      if array[i][0] == 'r'
        i+=1
      else
        return false
      end
      return true
    end
  else
    return false
  end
end
