class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name,         null:false
      t.text :outline
      t.integer :category_id, null: false
      t.text :foodstuff,      null:false
      t.text :cook ,          null:false
      t.references :user,     null: false,foreign_key: true
      t.timestamps
    end
  end
end
