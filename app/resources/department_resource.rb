class DepartmentResource < ApplicationResource
  has_many :positions

  attribute :name, :string
end
