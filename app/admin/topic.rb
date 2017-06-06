ActiveAdmin.register Topic do
  menu label: "Sujets de discussion"

  permit_params :title, :description
  actions :index, :destroy, :show, :update, :edit

  index do
    selectable_column
    id_column
    column :title
    column :created_at
    actions
  end

  filter :title
  filter :description
  filter :created_at
end
