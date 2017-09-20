class AddFieldsAddressToDwellers < ActiveRecord::Migration
  def change
    add_column :dwellers, :street, :string, limit: 50
    add_column :dwellers, :house_number, :string, limit: 8
    add_column :dwellers, :complement, :string, limit: 20
    add_column :dwellers, :zip_code, :string, limit: 10
    add_column :dwellers, :neighborhood, :string, limit: 50
    add_column :dwellers, :city, :string, limit: 50
    add_column :dwellers, :federal_unit, :integer        
  end
end
