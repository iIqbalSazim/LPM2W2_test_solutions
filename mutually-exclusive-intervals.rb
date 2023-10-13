=begin

Description of problem:
Given a set of time intervals in any order, our task is to merge all overlapping intervals into one and output the result which should have only mutually exclusive intervals.


Example 1:
Input: Intervals = {{1,3},{2,4},{6,8},{9,10}}
Output: {{1, 4}, {6, 8}, {9, 10}}

Explanation: Given intervals: [1,3],[2,4],[6,8],[9,10], we have only two overlapping intervals here,[1,3] and [2,4]. Therefore we will merge these two and return [1,4],[6,8], [9,10].


Example 2:
Input: Intervals = {{6,8},{1,9},{2,4},{4,7}}
Output: {{1, 9}} 

=end

def mutual_intervals(intervals)
    output = []
    output.push(intervals.shift())

    intervals.each { |x|
	output.each { |y|
	    if output.include? x
		break
	    end
	    index = output.find_index(y)
	    if y[1] <= x[1] && y[0] >= x[0]
		output[index] = x
	    elsif y[1] >= x[0] && y[1] <= x[1] && y[0] <= x[0]
		output[index] = [y[0], x[1]]
	    elsif x[1] < y [0] || y[1] < x[0]
		output.push(x)
	    end
	} 
    }
    print output

end

input1 = [[1,3], [2,4], [6,8], [9,10]]
input2 = [[6,8], [1,9], [2,4], [4,7]]

mutual_intervals(input2)

