class AdminUserQuery
  def initialize(users)
    @users = users
  end 

  def all
    @users.select { |u| u.has_admin_privileges? }
  end
end
