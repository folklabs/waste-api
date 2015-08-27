ActiveAdmin.register RoundPlan do


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

  form do |f|
    f.inputs do
      f.input :name
      f.input :start_date
      f.input :end_date

      # f.inputs do
      #   f.label 'Schedule'
      #   f.select_recurring :schedule
      # end
    end

    inputs 'Schedule' do
      label 'Repeating rule'
      select_recurring :schedule
    end
    
    f.actions
  end

end
