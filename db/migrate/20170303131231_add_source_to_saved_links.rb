class AddSourceToSavedLinks < ActiveRecord::Migration[5.0]
  def change
    add_column :saved_links, :source, :string
  end
end
