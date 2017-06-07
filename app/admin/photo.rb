ActiveAdmin.register Photo do
  permit_params :title, :image

  index do
    selectable_column
    id_column
    column :title
    column :image { |photo| image_tag(photo.image.url, width: '200px') }
    column :visible
    actions
  end

  filter :title

  form do |f|
    f.inputs "Détails de l'évènement" do
      f.input :title
      f.input :image, as: :file
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :image { |photo| image_tag(photo.image.url, width: '400px') }
      row :visible
    end
  end
end
