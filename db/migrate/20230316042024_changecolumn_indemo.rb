class ChangecolumnIndemo < ActiveRecord::Migration[7.0]
#  def up
#   change_column :demos, :description, :text
#  end

#  def down
#   change_column :demos, :description, :string
#  end
def change
  reversible do |dir|
    dir.up do
      change_column :demos, :description, :text
    end
    dir.down do
      change_column :demos, :description, :string
    end
  end
end
end

