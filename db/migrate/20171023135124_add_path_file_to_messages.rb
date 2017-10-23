class AddPathFileToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :path_file, :string
  end
end
