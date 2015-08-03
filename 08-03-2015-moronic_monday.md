# this thing called self receives gets 

def my_select(array)
  returned_element = []
  i = 0
  while i < array.length
    if yield(array[i])
      returned_elements << array[i]
    end
    i += 1
  end
  returned_elements
end

my_select([1, 2, 3, 4]) do |num|
  num.even?
end


<!-- typically done this way in ruby -->
[1, 2, 3, 4].my_select do |num|
end

<!-- something returns, true and false, nil and anything else -->
<!-- if it can return nil you can use it in a conditional -->

def my_collect(array)
  returned_elements = []
  i = 0
  while i < array.length
    returned_elements << yield(array[i])
    i += 1
  end
  returned_elements
end

[1, 2, 3, 4].my_collect do |num|
  num * num
end

<!-- map and collect always return a new array that has been operated on -->


<!-- this is the better way to do it - each is more elegant than while -->

def my_collect(array)
  r = []
  i = 0
  array.each do |item|
    r << yield(collection[i])
  end
  r
end

#######################################################

How To Run a Script 

#!/usr/bin/env 

chmod +x script.rb
makes it executable changes it permissions

########################################

def method(argument)
yield(argument)
end

method(another_argument){|x| puts x}

we are returning whatever the block returns

##################################

"Steven".send(:reverse)
same as "Steven".reverse

#################################

hash literal
Hash[:key, :value]
