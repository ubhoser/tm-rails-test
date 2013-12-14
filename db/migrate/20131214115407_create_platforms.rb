class CreatePlatforms < ActiveRecord::Migration
  def change
    create_table :platforms do |t|
      t.string :operating_system
      t.timestamps
    end
  end
end
