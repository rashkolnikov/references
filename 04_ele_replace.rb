# The ele_replace!(array, hash) method accepts an array and a hash as args.
# The method mutates the given array by replacing elements with their corresponding values in the hash.
#
# Note: this method MUTATES the input array. This means that the object_id of the input array will be identical
# to the object_id of the returned array.

def ele_replace!(array, hash)
    array.map!{ |ele|   # The exclamation point in front of map allows to iterate over each element of the array without creating a new one.
        if hash.has_key?(ele)
            hash[ele]
        else
            ele
        end
    }

    array
end


array_1 = [4, 2, 0, 2]
p array_1.object_id         # => 60
result_1 = ele_replace!(array_1, {2=>"two", 0=>"zero", 5=>"five"})
p result_1                  # => [4, "two", "zero", "two"]
p result_1.object_id        # => 60


array_2 = ["Matthias", "Simcha", "Mashu", "David"]
p array_2.object_id         # => 80
result_2 = ele_replace!(array_2, "Matthias"=>"J", "Mashu"=>"D")
p result_2                  # => ["J", "Simcha", "D", "David"]
p result_2.object_id        # => 80
