class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :timeoutable and :omniauthable, :registerable
  devise :database_authenticatable, :lockable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

end
