def map(arg)
arg.map { |ele| yield(ele)}
end


def reduce(arg, optional = nil)
optional_arg = optional ? optional : arg[0]
arg.reduce(optional_arg) do |acu, ele|
  acu-=1
  acu = yield(acu, ele)
  acu
end

end