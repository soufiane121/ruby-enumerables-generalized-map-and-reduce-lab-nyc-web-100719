def map(arg)
yield(arg)
end
map { |ele| -ele}