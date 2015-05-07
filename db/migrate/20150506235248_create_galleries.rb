class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :name
      t.text :body

      t.timestamps null: false
    end
  end
end
