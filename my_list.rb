require_relative 'my_enumerable'
class Mylist
    include MyEnumerable
    def initialize(*param)
        @list = param
    end

    def each(&block)
        return 'block is empty' unless block_given?
        @list.each { |element| block.call(element) }
    end
end

list = Mylist.new(1, 2, 3, 4)

# Test #all?
irb> list.all? {|e| e < 5}
=> true
irb> list.all? {|e| e > 5}
=> false

# Test #any?
irb> list.any? {|e| e == 2}
=> true
irb> list.any? {|e| e == 5}
=> false

# Test #filter
irb> list.filter {|e| e.even?}
=> [2, 4]