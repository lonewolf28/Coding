#!/home/raj/.rbenv/shims/ruby -w 


def sequence(*enumerables, &block)
	enumerables.each do |enumerable|
		enumerable.each(&block)
	end
end


def interleave(*enumerables)
	enumerators = enumerables.map { |x| x.to_enum }
	
	puts "#{enumerators}"
	until enumerators.empty? do
		begin
			e = enumerators.shift
			yield e.next
		
		rescue StopIteration
		
		else
			enumerators << e
		end
	end
end



def bundle(*enumerables)
	enumerators = enumerables.map { |e| e.to_enum }	
	loop { yield enumerators.map { |e| e.next } }
end


a,b,c = [1,2,3], 4..6, 'a'..'e'

#sequence(a,b,c) { |x| p x}
#p "sequence done"

#interleave(a,b,c) { |x| p x }
#p "interleave done"

#bundle(a,b,c) { |x| p x }
#p "bundle done"



x = y = 0

1.upto(4) do |x;y|
	y = x + 1
	puts  y * y
end



puts "#{x}, #{y}"


def two; yield 1,2; end
two { |x| p x }
two { |*x| p x }
two { |x| p x}




