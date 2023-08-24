def test_exception_handling
  begin
    # Code that might raise an exception
    result = 10 / 2
    puts "result: #{result}"
  rescue ZeroDivisionError => e
    # Handle the specific exception
    puts "Error: #{e.message}"
  rescue => e
    # Handle any other exception
    puts "An error occurred: #{e.message}"
  ensure
    # Code that will always run, regardless of whether an exception occurred
    puts "Ensuring the block"
  end
end

def test_mail_exception_handling
  begin
    handle_send_mail("sample_leave_application")
  rescue => e
    # Handle the mail sending exception
    puts "Error sending leave application email: #{e.message}"
  end
end

def handle_send_mail(leave_application)
  begin
    @leave_application = leave_application
    mail(to: 'masum@gmail.com', subject: 'New Leave Application', from: 'mr.x@gmail.com')
  rescue => e
    # Handle the mail sending exception
    puts "Error sending leave application email: #{e.message}"
  end
end

# Test the first example
puts "Testing exception handling:"
test_exception_handling

# Test the second example
puts "\nTesting mail exception handling:"
test_mail_exception_handling

