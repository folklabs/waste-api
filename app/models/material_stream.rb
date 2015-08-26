class MaterialStream < ActiveRecord::Base
  has_and_belongs_to_many :container_types
end
