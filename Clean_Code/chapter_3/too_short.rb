require 'date'
class User
  attr_accessor :active, :qualified, :last_login

  def initialize(active, qualified, last_login)
    @active = active
    @qualified = qualified
    @last_login = last_login
  end

  def qualified?
    @qualified
  end
end

def qualified_users(users)
  # Step 1: Retrieve active users from the collection
  active_users = users.select { |user| user.active }

  # Step 2: Select users marked as qualified from the active users
  qualified_users = active_users.select(&:qualified?)

  # Step 3: Sort qualified users by their last login date
  qualified_users.sort_by(&:last_login)

end



# Simulating user data
users = [
  User.new(true, true, DateTime.parse("2023-08-01")),
  User.new(true, false, DateTime.parse("2023-08-02")),
  User.new(true, true, DateTime.parse("2023-08-03"))
]

# Calling the method and printing the result
result = qualified_users(users)
puts "Qualified Users:"
result.each do |user|
  puts "Last Login: #{user.last_login}"
end
