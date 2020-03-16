class AddLatLongToFbgroups < ActiveRecord::Migration[5.2]
  def change
    add_column :fbgroups, :lat, :float
    add_column :fbgroups, :long, :float
  end
end
