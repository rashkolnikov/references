# The grid(n, m) method accepts two numbers as args.
# The method returns a 2D array with n rows and m columns (this means that there are n subarrays, each of length m).

def grid(n, m)
    Array.new(n){Array.new(m)}
end

# If you used the following code you could not solve the exercise

=begin

def grid(n, m)
    Array.new(n,Array.new(m))
end

# This occurs because the Array.new (m) method as a parameter of Array.new (n, {}) 
# creates arrays that refer to the same object id. 

# Therefore, changing the first element of the first array `result_1 [0] [0] =" X "` will change it 
# in all the other subarrays, since they share the same object id.

=end

result_1 = grid(2, 3)
p result_1              # => [[nil, nil, nil], [nil, nil, nil]]
result_1[0][0] = "X"
p result_1              # => [["X", nil, nil], [nil, nil, nil]]


result_2 = grid(4, 2)
p result_2              # => [[nil, nil], [nil, nil], [nil, nil], [nil, nil]]
result_2[0][0] = "Q"
p result_2              # => [["Q", nil], [nil, nil], [nil, nil], [nil, nil]]
