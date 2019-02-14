class CreateCouches < ActiveRecord::Migration[5.2]
  def change
    create_table :couches do |t|
      t.string :marque
      t.string :modele
      t.string :taille
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
