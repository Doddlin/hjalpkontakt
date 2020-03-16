class CreateFbgroups < ActiveRecord::Migration[5.2]
  def change
    create_table :fbgroups do |t|
      t.string :name
      t.string :url
      t.string :adminemail

      t.timestamps
    end
  end
end
