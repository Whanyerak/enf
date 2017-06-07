ActiveAdmin.register User, as: "Utilisateurs" do
  permit_params :first_name, :last_name, :admin, :branch,
                :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :full_name
    column :email
    column :admin
    column :branch  { |u| User.branches[u.branch] }
    column :current_sign_in_at
    actions
  end

  filter :first_name
  filter :last_name
  filter :email
  filter :admin

  form do |f|
    f.inputs "Admin Details" do
      f.input :first_name
      f.input :last_name
      f.input :admin
      f.input :branch, as: :select, collection: User.branches_collection, include_blank: false
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
      row :branch { |u| User.branches[u.branch] }
      row :current_sign_in_at
    end
  end

  controller do
    def update_resource(object, attributes)
      update_method = attributes.first[:password].present? ? :update_attributes : :update_without_password
      object.send(update_method, *attributes)
    end
  end
end
