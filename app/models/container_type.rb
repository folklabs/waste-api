class ContainerType < ActiveRecord::Base
  def to_s
    description = "#{size} #{color} #{shape}"
    description += ", #{lid_color} lid" if lid_color
    return description
  end
end
