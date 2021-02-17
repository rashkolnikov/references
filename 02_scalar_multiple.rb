# The scalar_multiple!(array, multiplier) method accepts an array and a number as args. 
# The method mutates the given array by multiplying all of the elements by the multiplier.
# The method returns the given array.
# 
# Note: this method MUTATES the input array. This means that the object_id of the input array will be identical
# to the object_id of the returned array.

def scalar_multiple!(array, multiplier)
    array.map{ |num| num * multiplier }
end


array_1 = [7, 0, 4]
p array_1.object_id                             # => 60
result_1 = scalar_multiple!(array_1, 3)
p result_1                                      # => [21, 0, 12]
p result_1.object_id                            # => 60


array_2 = [90, 30, 4, 12]
p array_2.object_id                             # => 80
result_2 = scalar_multiple!(array_2, 0.5)
p result_2                                      # => [45.0, 15.0, 2.0, 6.0]
p result_2.object_id                            # => 80
