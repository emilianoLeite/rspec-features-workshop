class AdminUserQuery
  def initialize(users)
    @users = users
  end 

  def all
    @users.select { |u| u.type == 'admin' }
  end
end
