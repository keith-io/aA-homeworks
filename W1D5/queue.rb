class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.unshift(el)
  end

  def dequeue
    @queue.pop
  end

  def peek
    @queue[-1]
  end
end

q = Queue.new

p q.enqueue(1)
p q.enqueue(2)
p q.enqueue(3)
p q.enqueue(4)
p q.enqueue(5)

p q.dequeue
p q.dequeue
p q.dequeue
p q.dequeue
p q.dequeue
