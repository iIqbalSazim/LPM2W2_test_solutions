=begin

Description of problem:
Given an array of words, print all anagrams together.


Example 1:
Input: array = {“cat”, “doc”, “tac”, “cod”, “act”}
output: cat tac act, doc cod

Explanation: cat tac and act are anagrams and doc and cod are anagrams as they have the same set of characters.


Example 2:
Input: array = {“abcd”, “defs”, “ghai”}
output: abcd, defs, ghai

Explanation: There are no anagrams in the array.

=end

def array_anagrams(words)
    res = [] 
    
    for i in 0...words.length    
	if !res.include? words[i]
	    x = words[i].split("")
	    x.sort!
	    res.push(words[i])
	    for j in i+1...words.length
		y = words[j].split("")
		y.sort!
		if x == y
		    res.push(words[j])
		end
	    end
	    res.push(",")
	end
    end
    res.pop
    print res.join(" ")
end

input1 = ["cat", "doc", "tac", "cod", "act"]
input2 = ["abcd", "defs", "ghai"]

array_anagrams(input1)
