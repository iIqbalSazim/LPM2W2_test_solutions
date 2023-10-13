=begin

Description:  Given an integer x, return true if x is a palindrome and false otherwise.


Sample Input:

Example 1:
Input: x = 121
Output: true
Explanation: 121 reads as 121 from left to right and from right to left.

Example 2:
Input: x = -121
Output: false
Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.

=end

def is_palindrome(x)
    print x.to_s == x.to_s.reverse
end

input1 = 121
input2 = -121

is_palindrome(input1)
