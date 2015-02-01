ActiveAdmin.register Leaderboard do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  #
  # or
  #
  permit_params do
    permitted = [:permitted, :attributes]
    permitted << :created_by
    permitted << :name
    permitted << :description
    permitted << :status
    permitted
  end


end
