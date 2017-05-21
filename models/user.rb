class User 
  attr_accessor :full_name, :type

  def has_admin_privileges? 
    type == 'admin'
  end 
end
