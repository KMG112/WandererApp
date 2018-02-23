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
	    t.integer :p_id
	    t.datetime :created_at, null: false
  	end


  	create_table :plots, force: :cascade do |t|
      # t.references :chapter, :chapter,index: true
      # t.references :path, index: true
      t.references :path,index: true, foreign_key: true
      # t.references :path2_id,index: true, foreign_key: true
      # t.references :pathPrev_id,index: true, foreign_key: true
      # t.integer "path"
      # t.integer "path2_id"
      # t.integer "pathPrev_id"
      t.integer "chapter"
      t.timestamps
    end

 	# add_index :plots, ["path1_id"], name: "path1_id" 
  #   add_index :plots, ["path2_id"], name: "path2_id" 
  #   add_index :plots, ["pathPrev_id"], name: "pathPrev_id" 
  #   add_index :plots, ["chapter_id"], name: "chapter_id" 

    # add_reference :plots, :path, column: :path_id, :foreign_key => true
 
    # add_reference :plots, :chapter, :foreign_key => true
    # add_foreign_key :plots, :paths, column: "path1_id"
    # add_foreign_key :plots, :paths, column: "path2_id"
    # add_foreign_key :plots, :paths, column: "pathPrev_id"

  end
end
