class ReturnValue
  def equal?(user1, user2)
    user1 == user2
  end
  def not_equal?(user1, user2)
    user1 != user2
  end


end

return_value =  ReturnValue.new
p "///////////check equal method////////////"
p return_value.equal?("masum", "didar")
p return_value.equal?("masum", "masum")

p "///////////check not equal method////////////"
p return_value.not_equal?("masum", "didar")
p return_value.not_equal?("masum", "masum")

puts "///////////check equal method////////////"
if return_value.equal?("masum", "masum")
  puts "User1 is equal to User2"
else
  puts "User1 is not equal to user2"
end

puts "///////////check not equal method////////////"
if return_value.not_equal?("masum", "didar")
  puts "User1 is not equal to user2"
else
  puts "User1 is equal to user2"
end