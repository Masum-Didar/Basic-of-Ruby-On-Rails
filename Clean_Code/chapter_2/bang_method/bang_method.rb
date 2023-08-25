class BangMethod
  attr_accessor :friends
  def remove_friends!(friend)
    @friends.delete(friend)
  end
end
class User
  attr_accessor :friends

  def initialize
    @friends = []
  end

  def remove_friend!(friend)
    @friends.delete(friend)
  end
end

# Create a user instance
user = User.new

user.friends = ['Alice', 'Bob', 'Charlie', 'David']
# Print the friends before removal
puts "Friends before removal: #{user.friends.join(', ')}"

# Remove a friend using the bang method
user.remove_friend!('masum')

# Print the friends after removal
puts "Friends after removal: #{user.friends.join(', ')}"

p "/////////////////////////////////////////"
# frozen_string_literal: true
array = [1,5,6,4]
p array
p array.sort
p array.sort!

p "/////////////////////////////////////////"

foo = "A STRING"
foo.downcase!
puts foo

p "/////////////////////////////////////////"
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
