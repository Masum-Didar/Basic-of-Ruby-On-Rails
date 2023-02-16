# The following example of a logging method isn't extensible
def log1(message, level)
  if level.to_s == 'warning'
    puts "Warn #{message}"
  elsif level.to_s == 'error'
    puts "Error #{message}"
  end
end

log1("An error occurred", :error)

# Let's adds another logging level to log method
def log2(message, level)
  if level.to_s == 'warning'
    puts "Warn #{message}"
  elsif level.to_s == 'error'
    puts "Error #{message}"
  elsif level.to_s == 'info'
    puts "Info #{message}"
  end
end

log2("You are logged in", :info)
log2("Please log in first", :warning)

#Best Practice
# we changed the log method to handle new log levels
def log3(message, level)
  puts "#{level.to_s.upcase}: #{message}"
end
log3("Please log in first", :warning)