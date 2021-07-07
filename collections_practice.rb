def begins_with_r(array)
  array.all? {|word| word.start_with?('r')}
end

def contain_a(array)
  array.select {|word| word.include?('a')}
end

def first_wa(array)
  array.find do |word|
    word[0..1] == "wa"
  end
end

def remove_non_strings(array)
  array.grep(String)
end

def count_elements(array)
  array.each_with_object(Hash.new(0)) {|g,h| h[g[:name]] += 1}.map {|name, count| {:name=>name, :count=>count}}
end

def merge_data(array1, array2)
  i = 0
  while i < array1.length
    array2.each do |element|
      element.each do |ka, va|
        if array1[i].has_value?(ka)
          array1[i].merge!(va)
        end
      end
    end
    i += 1
  end
  return array1
end

def find_cool(array)
  array.select {|x| x[:temperature] == 'cool'}
end

def organize_schools(hash)
  organized_schools = {}
  hash.each do |name, h|
    location = h[:location]
    organized_schools[location] ||= []
      organized_schools[location] << name
  end
return organized_schools
end
