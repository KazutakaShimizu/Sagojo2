class RemoveCountryToPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :country, :string
  end
end
