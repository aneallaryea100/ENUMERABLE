module MyEnumerable
    def all?
        result = true
        each do |element|
            result = false unless yield element 
        end
        result
    end

    def any?
        result = false
        each do |element|
            result = true if yield element
        end 
        result 
    end

    def filter
        result = []
        each do |element|
            result.push(element) if yield element
        end
        result
    end
end 