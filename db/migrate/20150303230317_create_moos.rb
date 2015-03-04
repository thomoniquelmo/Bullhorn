class CreateMoos < ActiveRecord::Migration
  def change
    create_table :moos do |t|
      t.string :content
      t.string :text

      t.timestamps
    end
  end
end
