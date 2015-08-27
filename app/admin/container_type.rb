ActiveAdmin.register ContainerType do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  permit_params do
    permitted = [:shape, :size, :color, :lid_color, :material_stream_ids]
    # permitted << :other if resource.something?
    permitted
  end

  form do |f|
    f.semantic_errors
    f.inputs
    f.inputs do
      f.input :material_streams
      # f.has_many :material_streams, heading: 'Material streams', allow_destroy: true do |a|
      #   a.input :name
      # end
      
    end
    f.actions
  end

end
