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
counter = 0 
array.uniq.each do |x| 
 
array.each do |y|
  
  if y == x 
     counter += 1 
 end 
 x[:count] = counter
end 
end 
end 




