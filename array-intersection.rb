=begin

Description of problem:

Given two integer arrays nums1 and nums2, return an array of their intersection. The result must be unique and can be returned in any order.


Sample input (with corner cases):

Input: nums1 = [1, 2, 2, 1], nums2 = [2, 2]
Output: [2]


Input: nums1 = [4, 9, 5], nums2 = [9, 4, 9, 8, 4]
Output: [9, 4]

=end

def array_intersection(nums1, nums2)
    res = []
    x = ""
    nums1.each { |el|	

	if x == el
	    break
	end

	if nums2.include? el
	    res.push(el)
	end
	x = el
    }
    res.uniq!
    print res
end

input1_nums1 = [1,2,2,1]
input1_nums2 = [2,2]

input2_nums1 = [4,9,5]
input2_nums2 = [9,4,9,8,4]

array_intersection(input1_nums1, input1_nums2)
