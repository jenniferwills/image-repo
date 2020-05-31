class AddPrivateToImage < ActiveRecord::Migration[6.0]
  def change
    add_column :images, :private, :boolean, :default => true
  end
end
