class AddAttreIntoStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :alternate_contact_number, :string
  end
end
