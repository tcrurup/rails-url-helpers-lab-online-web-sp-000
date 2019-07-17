class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active_status
    self.active == true ? 'active':'inactive'
  end

  def activate
    self.active = true
  end

  def deactivate
    self.active = false
  end

end
