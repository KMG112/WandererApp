class CreateChapters < ActiveRecord::Migration[5.1]
  def change
    create_table :chapters do |t|
      t.text :name
      t.text :email
      t.text :content
      t.text :path1
      t.text :path2
      t.date :created_on

      t.timestamps
    end
  end
end
