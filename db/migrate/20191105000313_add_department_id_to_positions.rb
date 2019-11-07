class AddDepartmentIdToPositions < ActiveRecord::Migration[5.2]
  def change
    add_reference :positions, :department
  end
end
