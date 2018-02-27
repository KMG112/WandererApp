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

  	create_table :plots, force: :cascade do |t|
  	  t.references :path1,index: true
      t.references :path2, index: true
      t.references :chapter, index: true
      t.timestamps
    end

  end
end
