=begin

Description of problem: 
You are given an array nums containing n distinct numbers taken from 0, 1, 2, ..., n. One number is missing from the array. Find the missing number.

Sample input (with corner cases):

Input: nums = [3, 0, 1]
Output: 2

Input: nums = [9, 6, 4, 2, 3, 5, 7, 0, 1]
Output: 8

=end

def find_missing_number(nums)
    nums.max()
    nums.min()
    for i in nums.min()..nums.max()
	if !nums.include? i
	    print i
	end
    end
end

input1 =[5,3,0,1,4,2,-1,-2,-4, -3, -6]
input2 = [9, 6, 4, 2, 3, 5, 7, 0, 1]

find_missing_number(input1)
