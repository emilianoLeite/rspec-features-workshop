class User 
  attr_accessor :full_name, :type

  def admin?
    type == 'manager' || type == 'supervisor'
  end
end
