def find_first_duplicate(arr)
  # type your code in here
  # FIRST ATTEMPT -- does not work on 1st test; all others pass
  # if arr.length == 1
  #   return -1
  # end
  # runner = arr[0]
  # arr_temp = arr.drop(1)
  # arr_temp.each do |num|
  #   if runner == num
  #     return runner
  #   end
  # end
  # find_first_duplicate(arr_temp)

  new_arr = []
  arr.each do |num|
    if new_arr.include?(num)
      return num
    else
    new_arr << num
    end
  end
  -1
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 3"
  puts "=>", find_first_duplicate([2, 1, 3, 3, 2])

  puts "Expecting: -1"
  puts "=>", find_first_duplicate([1, 2, 3, 4])
  
  puts "Expecting: 5"
  puts "=>", find_first_duplicate([5, 5, 1, 2, 3, 4])
  
  puts "Expecting: 1"
  puts "=>", find_first_duplicate([1, 2, 3, 4, 1])
  
  puts "Expecting: 5"
  puts "=>", find_first_duplicate([1, 2, 3, 4, 5, 5])
  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
