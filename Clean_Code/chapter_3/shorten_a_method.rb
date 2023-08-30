class User
  attr_accessor :first_name, :last_name
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
  def self.create(attributes)
    user = new(attributes[:first_name], attributes[:last_name])
    user.save
    user
  end
  def save
    puts "Saving user: #{first_name} #{last_name}"
  end
end
# Too long example/...............................................................................
# def create_user(first_name, last_name)
#   if first_name.nil? || first_name == ''
#     raise ArgumentError, "First Name is required!"
#   end
#   if last_name.nil? || last_name == ''
#     raise ArgumentError, "Last Name is required"
#   end
#
#   User.create(
#     first_name: first_name,
#     last_name: last_name
#   )
# end
#
# # Usage example
# begin
#   new_user = create_user("Masum", "Didar")
#   puts "User created: #{new_user.first_name} #{new_user.last_name}"
# rescue ArgumentError => e
#   puts "Error: #{e.message}"
# end

# Shorter example..................................................................
def create_uer(first_name, last_name)
  validate_input(first_name, last_name)
  User.create(
    first_name: first_name,
    last_name: last_name
  )
end
def validate_input(first_name, last_name)
  if first_name.nil? || first_name == ''
    raise ArgumentError, 'First name is required!'
  end
  if last_name.nil? || last_name == ''
    raise ArgumentError, 'Last name is required!'
  end
end
s_user = create_uer('Mr.', 'X')
puts "create a use #{create_uer.first_name} #{create_uer.last_name}"
