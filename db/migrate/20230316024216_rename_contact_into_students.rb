class RenameContactIntoStudents < ActiveRecord::Migration[7.0]
  def change
    rename_column :students, :contact, :permanent_contact_number
  end
end
