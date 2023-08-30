class User
  attr_reader :last_login, :paid_account

  def initialize(last_login, paid_account)
    @last_login = last_login
    @paid_account = paid_account
  end
end
user = User.new("1 Day ago", false)
class InactiveUserQuery
  def initialize(relation = User)
    @relation = relation
  end

  def all
    @relation.where(
      last_login: "6 month ago",
      paid_account: false
    )
  end
end

inactive_user_query = InactiveUserQuery.new(User)
p inactive_user = inactive_user_query.all
