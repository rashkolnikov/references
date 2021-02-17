# The method my_rotate!(array, amt) accepts an array and a number as args.
# The method mutates the array by rotating the elements 'amt' number of times. 
# When given a positive 'amt', a single rotation will rotate left, causing the first element to move to the last index
# When given a negative 'amt', a single rotation will rotate right, causing the last element to move to the first index
# The method returns the given array.
# 
# Note: this method MUTATES the input array. This means that the object_id of the input array will be identical
# to the object_id of the returned array.

def my_rotate!(array, amt)
    if amt > 0
        amt.times{
            ele = array.shift
            array << ele
        }
    else 
        (-amt).times{
            ele = array.pop
            array.unshift(ele)
        }
    end

    array
end


array_1 = ["a", "b", "c", "d"]
p array_1.object_id                 # => 60
result_1 = my_rotate!(array_1, 2)
p result_1                          # => ["c", "d", "a", "b"]
p result_1.object_id                # => 60


array_2 = ["NOMAD", "SOHO", "TRIBECA"]
p array_2.object_id                 # => 80
result_2 = my_rotate!(array_2, 1)
p result_2                          # => ["SOHO", "TRIBECA", "NOMAD"]
p result_2.object_id                # => 80


array_3 = ["a", "b", "c", "d"]
p array_3.object_id                 # => 100
result_3 = my_rotate!(array_3, -3)
p result_3                          # => ["b", "c", "d", "a"]
p result_3.object_id                # => 100
