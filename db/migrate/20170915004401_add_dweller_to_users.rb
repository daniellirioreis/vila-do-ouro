class AddDwellerToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :dweller, index: true, foreign_key: true
  end
end
