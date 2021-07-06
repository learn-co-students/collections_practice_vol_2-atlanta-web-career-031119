# your code goes here

def begins_with_r(array)
new_array = []
  array. each do |name|

    if name.start_with?("r")
       new_array << "true"
       
    else 

      new_array << "false"

    end     
     
  end 
  if new_array.include? "false"

    return false 
else 

  return true 
    
end   
end 


def contain_a(array)
new_array = []
  array. each do |name|

    if name.include?"a"
       new_array << name
    end     
  end 
return new_array 
end 



def first_wa(array)
  new_array = []
array.each do |name|

   if name.start_with?("wa")
    new_array << name 
    break 
   

end 
end 

return new_array.join
end

def remove_non_strings(array)

array.delete_if {|z| z.class != String }

return array 

  
end

def count_elements(array)

array.uniq.each do |x| 
counter = 0  
array.each do |y|
  
  if y == x 
     counter += 1 
 end 
 
end 
x[:count] = counter
end 
end 


def merge_data(keys, data)
  merged = []
  keys.each {|i| data.first.map {|k,v| if i.values[0] == k then merged << i.merge(v) end}}
  merged
end

 def find_cool(cool)
    cool.select {|i| i.any? {|k,v| v == "cool"}} 
end

 def organize_schools(schools)
    locations_hash = {}
    schools.collect {|k,v| locations_hash[v[:location]] = []}
    locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end


