# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#

def checkTriangleArguments(a,b,c)
	# check if the arguments are valid
	if a <= 0 or b <= 0 or c <= 0
		raise TriangleError
	end

	# check if it is a valid triangle
	check = [a,b,c].sort
	raise TriangleError if check[2] >= check[1] + check[0]	
end

def triangle(a, b, c)
	checkTriangleArguments(a,b,c)
	if a == b and b == c
		:equilateral
	elsif a == b or b == c or a == c
		:isosceles
	else
		:scalene
	end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
