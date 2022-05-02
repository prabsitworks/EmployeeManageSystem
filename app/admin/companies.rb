ActiveAdmin.register Company do
  # Filter to be applied for Company search 
  filter :name
  filter :area
  filter :city
  filter :email

  index do
    selectable_column
    id_column
    column :name
    column :area
    column :city
    column :website
    column :email
    actions
  end

  permit_params :name, :area, :city, :email

  sidebar 'User Details', only: [:show, :edit] do
    ul do
      li link_to 'Users', admin_company_users_path(resource)
    end
  end

end
