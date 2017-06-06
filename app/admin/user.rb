ActiveAdmin.register User, as: "Utilisateurs" do
  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :full_name
    column :email
    column :admin
    column :current_sign_in_at
    actions
  end

  filter :first_name
  filter :last_name
  filter :email
  filter :admin

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  show do
    attributes_table do
      row :first_name
      row :last_name
      row :email
      row :admin
      row :branch
      row :current_sign_in_at
    end
  end
end
