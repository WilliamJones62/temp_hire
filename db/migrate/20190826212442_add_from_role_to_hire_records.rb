class AddFromRoleToHireRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :hire_records, :from_role, :string
  end
end
