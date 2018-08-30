class CreateRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :relations do |t|
      t.string :libraries_id
      t.string :posts_id
      t.string :tag_id

      t.timestamps
    end
  end
end
