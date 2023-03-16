class RemoveFromStudent < ActiveRecord::Migration[7.0]
  def change
    remove_column :students, :age, :integer
  end
end
