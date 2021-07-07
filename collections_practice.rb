# your code goes here
def begins_with_r(array)
  i=0
  while i<array.length
    if array[i][0] == 'r'
      i+=1
    else
      return false
    end
    return true
  end
end

def contain_a(array)
  i=0
  a_words=[]
  while i<array.length
    word=array[i]
    if word.include?('a')
      a_words<<word
      i+=1
    else
      i+=1
    end
  end
  return a_words
end

def first_wa(array)
  wa_things=array.find {|item| item[0]=='w' && item[1]=='a'}
  return wa_things
end

def remove_non_strings(array)
  # array.collect {|item| if item.to_s!=item; array.delete(item) end}
  array.collect {|item| if item.class!=String || item.class==Symbol; array.delete(item) end}
  # CHEEEEEAAAATTTTIIINNNNGGGGG
  #array.delete(:hello)
  return array
end

def count_elements(array)
  count_array=Array.new
  array.uniq.collect {|item| count_array<<{:count=>array.count(item), :name=>item}}
  return count_array
end
