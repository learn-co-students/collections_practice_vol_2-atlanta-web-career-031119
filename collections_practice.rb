#begins_with_r
def begins_with_r(array)
  array.all? {|word| word.index('r') == 0}
end

#contain_a
def contain_a(array)
 array.select {|word| word.include?('a')}
end

#first_wa
def first_wa(array)
  array.map! {|word| word.to_s}
  array.find {|word| word.index('w') == 0 && word.index('a') == 1}
end

#remove_non_strings
def remove_non_strings(array)
  array.select {|x| x == x.to_s}
end

#count_elements
def count_elements(array)
  counts = array.each_with_object(Hash.new(0)) { |name,counts| counts[name] += 1 }
  new_array = []
  counts.each do |name_hash,num| 
    name_hash.each do |key, value|
      new_array << {:count => num, key => value}
    end
  end
  
  new_array
end

#merge_data
def merge_data(keys, data)
 new_array = []
 keys.each_with_index do |val, index|
   name = keys[index][:first_name]
   new_array << val.merge(data[0][name])
 end
 new_array
end

#find_cool
def find_cool(array)
  cool_array = []
  array.each do |x|
    if x[:temperature] == "cool"
      cool_array << x
    end
  end
  cool_array
end

#organize_schools
def organize_schools(school_hash)
  # let(:schools) {
  #   {
  #     "flatiron school bk" => {
  #       :location => "NYC"
  #     },
  #     "flatiron school" => {
  #       :location => "NYC"
  #     },
  #     "dev boot camp" => {
  #       :location => "SF"
  #     },
  #     "dev boot camp chicago" => {
  #       :location => "Chicago"
  #     },
  #     "general assembly" => {
  #       :location => "NYC"
  #     },
  #     "Hack Reactor" => {
  #       :location => "SF"
  #     }
  #   }
  # }

  cities_hash = {}
  school_hash.each do |name, location|
    location.each {|l, city| cities_hash[city] = []}
  end
  
  school_hash.each do |name, location|
    location.each {|l, city| cities_hash[city] << name}
  end
  cities_hash

end