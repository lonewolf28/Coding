#!/home/raj/.rbenv/shims/ruby

p = Proc.new { |x,y| x + y }
#puts p.call(4,5)


def invoke(x,y,&b)
	b.call(x,y)
end


#puts invoke(4,5) { |x,y| x ** y }




def triangle_type(a, b, c )
	angle_a	 = Math.cos(b ** 2 + c ** 2 - a ** 2 / 2 * b * c)
	angle_b = Math.cos(c * 2 + a ** 2 - b ** 2 / 2 * c * a)
	angle_c = Math.cos(a ** 2 + b ** 2 - c ** 2 / 2 * a * c)
	angles = Array.new
	angles << angle_a << angle_b << angle_c
	angles
end


	
puts triangle_type(7,3,2)
puts triangle_type(2,4,6)
puts triangle_type(8,5,7)
puts triangle_type(3,4,5)
puts triangle_type(7,12,8)



