def map(arg)
arg.map { |ele| yield(ele)}
end


def reduce(arg)
arg.reduce(0) do |acu, ele|
  yield(acu,ele)
end
end