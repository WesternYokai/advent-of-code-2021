# Parse file into array (File IO)
# Count number of increases


ary=[]
IO.foreach("input.txt") do |line|
    ary.push(line.to_i)
end

increases = 0
ary.each_with_index do |ele, idx|
    break if idx == ary.length - 1
    if ele < ary[idx+1]
        increases += 1
    end
end

puts increases
