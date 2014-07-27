class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :title
      t.string :picture
      t.string :text
      t.string :location

      t.timestamps
    end
  end
end
