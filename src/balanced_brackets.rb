# frozen_string_literal: true

# https://www.hackerrank.com/challenges/balanced-brackets/problem
require 'byebug'
class BalancedBrackets
  def input
    test_cases = gets.to_i
    output = []
    0.upto(test_cases - 1) do |_i|
      brackets = gets.to_s.rstrip
      output << if balanced? brackets
                  'YES'
                else
                  'NO'
                end
    end

    puts output
  end

  def balanced?(input)
    stack = []
    input.each_char do |ch|
      if ['(', '[', '{'].include?(ch)
        stack.push ch
      else
        return false if stack.empty?

        poped = stack.pop
        return false unless valid_pop? ch, poped
      end
    end
    stack.empty?
  end

  def valid_pop?(ch, poped)
    return poped == '(' if ch == ')'
    return poped == '['   if ch == ']'
    return poped == '{'   if ch == '}'
  end
end

b = BalancedBrackets.new
b.input
