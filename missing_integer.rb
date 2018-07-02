#fails some tests. 100% accuracy 50% off on performance

def solution(a)
  a = a.select { |num| num > 0 }.sort
  return 1 if a.count == 0  || a.min > 1
  return 2 if a.count == 1 && a.first == 1
  missing_num = (a.first..a.last).to_a - a
  missing_num.empty? ? a.last + 1 : missing_num.min
end

# find method => find returns the first element for which the block is TRUE

# edge case (and slight misunderstanding the problem) When there is no '1' in an array, it has to be 1. teh whole is not necessarily sequntial 
# Write a function:

# int solution(int A[], int N);

# that, given an array A of N integers, returns the smallest positive integer (greater than 0) that does not occur in A.

# For example, given A = [1, 3, 6, 4, 1, 2], the function should return 5.

# Given A = [1, 2, 3], the function should return 4.

# Given A = [−1, −3], the function should return 1.

# Assume that:

# N is an integer within the range [1..100,000];
# each element of array A is an integer within the range [−1,000,000..1,000,000].
# Complexity:

# expected worst-case time complexity is O(N);
# expected worst-case space complexity is O(N) (not counting the storage required for input arguments).
# Copyright 2009–2018 by Codility Limited. All Rights Reserved. Unauthorized copying, publication or disclosure prohibited.