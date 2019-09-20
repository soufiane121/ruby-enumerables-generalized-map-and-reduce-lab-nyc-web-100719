def map(arg)
arg.map { |ele| yield(ele)}
end


def reduce(arg, optional = nil)
p optional_arg = (optional ? optional : arg[0])
arg.reduce(optional_arg) do |acu, ele|
  yield(acu,ele)
end
end