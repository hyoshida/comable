class CreateComableCategories < ActiveRecord::Migration
  def change
    create_table :comable_categories do |t|
      t.string :name, null: false
      t.string :ancestry, index: true
      t.integer :position
      t.timestamps null: false
    end
  end
end
