class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
    	t.string :content
    	t.integer :votes
      t.timestamps
    end
  end
end
