# your code goes here
def begins_with_r(array)
  if array.length>0
    i=0
    while i<array.length
      if array[i][1] == 'r'
        i+=1
      else
        return false
  end
end
