def map(arg)
arg.map { |ele| yield(ele)}
end


def reduce(arg, optional = 0)
arg.reduce(optional) do |acu, ele|
  yield(acu,ele)
end
end