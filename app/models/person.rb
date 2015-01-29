class Person < ActiveRecord::Base

  def full_name
    "#{names} #{last_name} #{surname}"
  end

end
