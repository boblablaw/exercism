class School
  attr_reader :school

  def initialize
    @school = Hash.new { |h, k| h[k] = [] }
  end

  def add(student, grade)
    school[grade].push(student).sort!
  end

  def grade(num)
    school[num]
  end

  def to_hash
    Hash[school.sort]
  end
end
