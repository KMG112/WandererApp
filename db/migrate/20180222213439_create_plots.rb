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
	    t.datetime :created_at, null: false
  	end


  	create_table :plots do |t|
      # t.references :chapter, :chapter, foreign_key: true
      # t.references :path,foreign_key: true
      # t.references :path2,foreign_key: true
      # t.references :pathPrevra, foreign_key: true

      t.timestamps
    end

    add_reference :plots, :path, column: :path1, foreign_key: true
    add_reference :plots, :path, column: :path2, foreign_key: true
    add_reference :plots, :path, column: :pathPrev, foreign_key: true
    add_reference :plots, :chapter, foreign_key: true


  end
end
