class Queue
  attr_reader :q
  def initialize
    @q = []
  end

  def enqueue(el)
    @q.push(el)
  end

  def dequeue
    @q.shift
  end

  def peek
    @q[0]
  end
end

#hello Pam! T-rex

#hiya Hendrick~

#FINALLLLLYYYYYYYYYY