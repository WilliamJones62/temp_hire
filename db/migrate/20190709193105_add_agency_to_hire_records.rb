class AddAgencyToHireRecords < ActiveRecord::Migration[5.2]
  def change
    add_column :hire_records, :agency, :string
  end
end
