class CreatePlots < ActiveRecord::Migration[5.1]
  def change
    

    create_table :chapters, force: :cascade do |t|
    t.string :name
    t.string :email
    t.string :content
    t.datetime :created_at, null: false
	end
	
  	create_table :paths, force: :cascade do |t|
	    t.text :content
	    t.integer :p_type
	    t.datetime :created_at, null: false
  	end

  	create_table :plots, force: :cascade do |t|
  	  # t.integer "path_id"
      t.integer "path1_id"
      t.integer "path2_id"
      t.integer "pathPrev_id"
      # t.integer "chapter_id"
      t.timestamps
    end

    add_reference :plots, :path, column: :path_id
 
    add_reference :plots, :chapter, :foreign_key => true

  end
end
