#!/home/raj/.rbenv/shims/ruby


def num_sq(num)
	numb = num.to_s.split(//).map{ |x| x.to_i }
	result = String.new
	numb.each do |i|
		result << ( i ** 2).to_s
	end
	result
end


puts num_sq(9119)
