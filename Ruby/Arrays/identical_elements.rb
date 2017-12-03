# Given two arrays of integers m and n, test if they contain at least one identical element. Return true if they do; false if not.
#
#   - Compapre array items. Pick each item in the arra and compare it to the other array.
#   - Create if statement.

  def duplicate_elements(m, n)
    m.any? { |x| n.include?(x) }
  end

  #OR
  
  def duplicate_elements(m, n)
    (m&n).any?
  end
