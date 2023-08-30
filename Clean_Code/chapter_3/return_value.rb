class ReturnValue
  attr_accessor :id, :name

  def initialize(id, name)
    self.id = id
    self.name = name
  end
end

def find_by_name(users, name)
  users.each do |user|
    if user.name == name
      return "Unable to find user with this name #{name}"
    end
  end
  return  {message: "Unable to find user with this name #{name}"}
end

users = []
users << ReturnValue.new(1, "Rafid")
users << ReturnValue.new(2, "Rahat")
users << ReturnValue.new(3, "Sohel")

puts find_by_name(users, "Sohel")