require_relative './stack'
require 'pry'

class MyQueue

    def initialize
        @s1 = Stack.new
        @s2 = Stack.new
    end

    def add v
        @s1.empty? ? @s1.push(v) : @s2.push(v)
    end

    def remove
        # binding.pry
        if @s1.empty?
            until @s2.empty?
                @s1.push(@s2.pop)
            end
            @s1.pop
        else
            @s1.pop
        end
    end

    def peek
        @s1.peek
    end


end