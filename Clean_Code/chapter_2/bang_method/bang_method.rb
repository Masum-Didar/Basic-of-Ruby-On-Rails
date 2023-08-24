class BangMethod
  attr_accessor :friends
  def remove_friends!(friend)
    @friends.delete(friend)
  end
end
# frozen_string_literal: true
array = [1,5,6,4]
p array
p array.sort
p array.sort!

foo = "A STRING"
foo.downcase!
puts foo

class StringManipulator
  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def capitalize_text
    @text.capitalize
  end

  def capitalize_text!
    @text.capitalize!
  end
end

text = "hello world"
manipulator = StringManipulator.new(text)

capitalized = manipulator.capitalize_text
puts "Capitalized (without bang): #{capitalized}"
puts "Original text after capitalize: #{manipulator.text}"

capitalized_bang = manipulator.capitalize_text!
puts "Capitalized (with bang): #{capitalized_bang}"
puts "Original text after capitalize with bang: #{manipulator.text}"
