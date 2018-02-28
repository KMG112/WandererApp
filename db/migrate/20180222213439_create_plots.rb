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
      t.belongs_to :path,index: true
      t.belongs_to :chapter, index: true
      t.integer :path1_id
      t.integer :path2_id
      t.integer :pathPrev_id
      t.timestamps
    end

  end
end
