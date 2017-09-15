class AddTypeMessageToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :type_message, :integer
  end
end
