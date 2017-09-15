class CreateDwellers < ActiveRecord::Migration
  def change
    create_table :dwellers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :cpf

      t.timestamps null: false
    end
  end
end
