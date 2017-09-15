class User < ActiveRecord::Base
  belongs_to :dweller
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  def to_s
    name
  end
  
  def dweller?
    dweller.present?
  end
end
