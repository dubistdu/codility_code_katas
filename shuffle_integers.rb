# codility interview
# shuffle integers 

# There is a company that has a very creative way of managing its accounts.
# Every time they want to write down a number, they shuffle its digits in the following way:
# they alternatively write one digit from the front of the number and one digits from the back, then the second digits from the front and 
# the second from the back, and so on until the length of the shuffled number is the same as that of the original.

# given integer a, return its shuffled representation
# for example, given A = 123456 the function should return 162534
# give a = 130 the function should return 103


def solution(a)
  number = a.to_s.chars
  first_arrays = []
  (number.length/2).times do
    first_arrays << number.shift
    first_arrays << number.rotate(number.length-1).shift
    number.pop
  end
  ( first_arrays + number ).join("").to_i
end


