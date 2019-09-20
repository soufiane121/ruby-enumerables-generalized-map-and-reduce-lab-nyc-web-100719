def map(arg)
arg.map { |ele| yield(ele)}
end


def reduce(arg, optional = nil)
p optional ? optional : arg[0]
end