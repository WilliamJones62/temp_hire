class CreateHireRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :hire_records do |t|
      t.string :dc
      t.string :emp_name
      t.date :start_date
      t.date :end_date
      t.string :emp_role
      t.decimal :rate
      t.decimal :hours

      t.timestamps
    end
  end
end
