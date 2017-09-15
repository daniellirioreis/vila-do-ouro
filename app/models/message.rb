class Message < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :title, :description, :type_message
  has_enumeration_for :type_message, with: TypeMessage, create_helpers: true
  
  scope :sorted, -> { order("messages.created_at DESC") }
  
	
end
