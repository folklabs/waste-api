ActiveAdmin.register MaterialStream do

  form do |f|
    f.inputs do
      f.input :name
      f.input :color, as: :string
    end
  end

end
