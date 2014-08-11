class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string :content
    	t.integer :votes
    	t.belongs_to :line
      t.timestamps
    end
  end
end
