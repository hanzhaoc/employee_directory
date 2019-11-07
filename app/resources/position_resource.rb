class PositionResource < ApplicationResource
  belongs_to :employee
  belongs_to :department

  attribute :title, :string
  attribute :active, :boolean

  attribute :historical_index, :integer, only: [:sortable]

  filter :employee_id, :integer
  filter :department_id, :integer
end
