class CreateSuggestions < ActiveRecord::Migration[6.0]
  def change
    create_table :suggestions do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :picture
      t.string :description
      t.string :text

      t.timestamps
    end
  end
end
