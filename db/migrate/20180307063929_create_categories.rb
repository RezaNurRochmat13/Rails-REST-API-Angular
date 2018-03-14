class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.text :category_name
      t.text :description

      t.timestamps null: false
    end
  end
end
