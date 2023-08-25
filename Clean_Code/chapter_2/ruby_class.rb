class UserSetup
  def initialize(user)
    @user = user
  end
  def execute
    add_coins
    send_welcome
  end
  private
  def add_coins
    puts "Adding coins to user's account."
  end
  def send_welcome
    email = @user.email
    puts "Sending welcome mail to #{email}"

  end
end

class UserMail
  attr_reader :email

  def initialize(email)
    @email = email
  end
end

mail_user = UserMail.new('mr.x@gmail.com')
user_setup = UserSetup.new(mail_user)
user_setup.execute