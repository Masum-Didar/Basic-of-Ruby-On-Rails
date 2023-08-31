# Global variable
$global_variable = "I'm a global variable"

class ExampleClass
  # Class variable
  @@class_variable = "I'm a class variable"

  def initialize(local_variable)
    # Instance variable
    @instance_variable = "I'm an instance variable"
    local_variable = "I'm a local variable"  # Local variable
    print_variables(local_variable)
  end

  def print_variables(local_variable)
    puts "Global Variable: #{$global_variable}"
    puts "Class Variable: #{@@class_variable}"
    puts "Instance Variable: #{@instance_variable}"
    puts "Local Variable: #{local_variable}"
  end
end

# Local variable
local_variable = "I'm a local variable"
ExampleClass.new(local_variable)
