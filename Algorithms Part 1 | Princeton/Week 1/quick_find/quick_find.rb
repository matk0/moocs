class QuickFind
  attr_reader :union_find

  def initialize number_of_objects
    @union_find = Array 0..(number_of_objects - 1)
  end

  def connect p, q
    pid = union_find[p]
    qid = union_find[q]
    union_find.each_with_index do |item, index|
      union_find[index] = qid if item == pid
    end
  end

  def connected? p, q
    union_find[p] == union_find[q]
  end

end
