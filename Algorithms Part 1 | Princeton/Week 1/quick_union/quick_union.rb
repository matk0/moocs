class QuickUnion
  attr_reader :union_find

  def initialize number_of_objects
    @union_find = Array 0..(number_of_objects - 1)
  end

  def union p, q
    i = root(p)
    j = root(q)
    union_find[i] = j
  end

  def connected? p, q
    root(p) == root(q)
  end

  private

  def root i
    until i == union_find[i] do
      i = union_find[i]
    end
    i
  end

end
