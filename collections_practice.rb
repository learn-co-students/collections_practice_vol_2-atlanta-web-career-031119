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
    end
    return true
  else
    return false
  end
end

def contain_a(array)
  if array.length>0
    i=0
    a_stuff=[]
    while i<array.length
      word = array[i]
      if word.include? :'a'
        a_stuff<<word
        i+=1
      else
        i+=1
      end
      return a_stuff
    end
  else
    return nil
  end
end
