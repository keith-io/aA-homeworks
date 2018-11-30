  class Stack
    def initialize
      @stack = []
    end

    def push(el)
      @stack << el
    end

    def pop
      @stack.pop
    end

    def peek
      @stack[-1]
    end
  end

s = Stack.new


p s.push(3)
p s.push(2)
p s.push(1)

p s.pop
p s.pop
p s.pop

p s.peek
