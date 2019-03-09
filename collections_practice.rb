# your code goes here
require "pry"

def begins_with_r(arr)
  num = 0
  arr.each do |item|
    if item.downcase.start_with?('r')
      num += 1
    end
  end
  if num == arr.size
    return true
  else
    return false
  end
end

def contain_a(array)
  has_a = []
  array.each do |item|
    if item.downcase.include?('a')
      has_a.push(item)
    end
  end
  return has_a
end

def first_wa(words)
  words2 = []
  for word in words
    words2 = word.to_s.split('')
    if words2[0] == 'w' and words2[1] == 'a'
      return word
    end
  end
end

def remove_non_strings(array)
  array2 = []
  for index in 0...array.size
    if array[index].instance_of? String
      array2.push(array[index])
    end
  end
  return array2
end

def count_elements(element)
  counts = []
  counting = []
  for item in element
    if counting.include?(item)
      next
    else
      counting << item
    end
  end
  for item in counting
    num = 0
    for key in element
      if item == key
        num += 1
      end
    end
    counts << num
  end
  num = -1
  counting.each do |key|
    key[:count] = counts[num += 1]
  end
end

def merge_data(data1, data2)
  number = 0
  data3 = Marshal.load(Marshal.dump(data1))
  data1.each do |info|
    info.each do |key, value|
      if key == :first_name
      data2.each do |info2|
          info2.each do |key2, value2|
            if key2 == value
            value2.each do |value3, stat|
                data3[number][value3] = stat
              end
            end
          end
        end
      end
    end
    number += 1
  end
  data3
end

def find_cool(element)
  cool = []
  element.each do |info|
    info.each do |key, value|
      if value == "cool"
        cool << info
      end
    end
  end
  return cool
end

def organize_schools(school_list)
  organized = {}
  city = []
  locations = []
  schools.each do |key, value|
    value.each do |locate, place|
      if city.include?(place)
        next
      else
        city << place
      end
    end
  end
  for i in 0...city.size
    locations[i] = []
  end
  for i in 0...city.size
    schools.each do |key, value|
      value.each do |locate, place|
        if city[i].include?(place)
          locations[i] << key
        end
      end
    end
  end
  for i in 0...city.size
    organized[city[i]] = locations[i]
  end
  organized
end
