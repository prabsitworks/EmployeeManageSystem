ActiveAdmin.register User do
  belongs_to :company
  
  permit_params :first_name, :last_name, :address_1, :address_2, :email, :password, :password_confirmation, company_ids: []
  
  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :company
    column :address_1
    column :address_2
    column :email
    actions
  end

  filter :first_name
  filter :last_name
  filter :email

  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :address_1
      f.input :address_2
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  controller do
    def create
      binding.pry
      # if params[:user][:company_ids].all? { |entry| entry.blank? }
      #   params[:user][:company_ids] << params[:company_id]
      # end
      # params[:company_id] << params[:company_id]
      super
      
    end
  end
  
end
