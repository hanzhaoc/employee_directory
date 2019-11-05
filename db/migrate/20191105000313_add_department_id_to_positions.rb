class AddDepartmentIdToPositions < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :positions, :departments
  end
end
