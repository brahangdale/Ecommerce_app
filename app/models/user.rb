class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
            
  enum role: [:user, :admin]
  
  def name
    if self.first_name.present?
      self.first_name
    else
      self.email.split('@')[0]
    end
  end
end











