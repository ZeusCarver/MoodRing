class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :url
      t.string :name

      t.timestamps
    end
  end
end
