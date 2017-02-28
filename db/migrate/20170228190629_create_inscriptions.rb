class CreateInscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :inscriptions do |t|
      t.string :nom
      t.string :prenom
      t.string :adresse_mail
      t.string :password

      t.timestamps
    end
  end
end
