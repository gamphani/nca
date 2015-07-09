class AddDepartmentToDocs < ActiveRecord::Migration
  def change
    add_column :docs, :department, :string, after: :name
  end
end
