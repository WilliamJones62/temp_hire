class AddOvertimeToHireRecords < ActiveRecord::Migration[5.2]
  def change
    add_column :hire_records, :overtime, :boolean
  end
end
