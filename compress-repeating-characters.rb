=begin

Description of problem: Given a string consisting of lowercase letters. Compress the string by counting repeated characters.

Sample input:
Input: "aaabbbcccddehh"
Sample output:

=end

def compress_string(s)
    obj = Hash.new(0)

    s.split("").each { |el|
	obj[el] += 1
    }
    
    res = ""

    obj.map { |k , v|
	if v == 1
	    res << "#{k}"
	else
	    res << "#{k}#{v}"
	end
    }
    
    puts res
end

input = "aaabbbcccddehh"

compress_string(input)
