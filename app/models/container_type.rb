class ContainerType < ActiveRecord::Base
  has_and_belongs_to_many :material_streams
  has_and_belongs_to_many :services

  def description
    self.to_s
  end
  
  def to_s
    description = "#{size} #{color} #{shape}"
    description += ", #{lid_color} lid" if lid_color
    return description
  end
end
