class PositionResource < ApplicationResource
  belongs_to :employee

  attribute :title, :string
  attribute :active, :boolean

  attribute :historical_index, :integer, only: [:sortable]

  filter :employee_id, :integer
end
