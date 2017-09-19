class Message < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :title, :description, :type_message
  has_enumeration_for :type_message, with: TypeMessage, create_helpers: true
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
  
  
  scope :sorted, -> { order("messages.created_at DESC") }
  
	def name_file
	 attachment.to_s.split("/").last
	end	
end
