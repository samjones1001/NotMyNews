class CreateSavedLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :saved_links do |t|
      t.text :title
      t.text :subtitle
      t.text :url
      t.text :imageurl

      t.timestamps
    end
  end
end
