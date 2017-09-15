class Dweller < ActiveRecord::Base
  has_one :user, dependent: :destroy	
  validates_presence_of :name, :email
  after_save :create_user
	
  private
  
  def create_user
		 user = User.find_by_email_and_dweller_id(email, id)		 
     unless user.present?
       user = User.find_by_email(email)  		 

       if user.present? 
         errors.add(:email, "já em está em uso")          
        else
          if self.user.nil?
            user = User.new( name: name, email: email, password: 12345678, password_confirmation: 12345678, dweller_id: id)
            if user.save
            else
            end            
          else
            self.user.update_attributes(email: email, name: name)                  
          end    
        end 
     end 
	end
	
end
