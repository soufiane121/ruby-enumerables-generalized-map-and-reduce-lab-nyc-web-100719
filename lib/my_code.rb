def map(arg)
arg.map { |ele| yield(ele)}
end

=begin
def reduce(arg, optional = nil)
if optional
  optional_arg = optional
  i=0
else
optional_arg = arg[0]  
i=1 
end
while i <arg.length
optional_arg = yield(optional_arg,arg[i])
i+=1

end
optional_arg
end
=end

def reduce(arg, optional = nil)
  optional_arg = optional ? optional : arg[1]
  arg.reduce(optional_arg) do |acu, ele|
     yield(acu,ele)
  end
    end
    
    
    