class AddPermEmpToHireRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :hire_records, :perm_emp, :boolean
  end
end
