class CreateSavedPublications < ActiveRecord::Migration[6.0]
  def change
    create_table :saved_publications do |t|
      t.references :user, null: false, foreign_key: true
      t.references :publication, null: false, foreign_key: true

      t.timestamps
    end
  end
end
