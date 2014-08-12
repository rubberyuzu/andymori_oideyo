class CreateGeneralComments < ActiveRecord::Migration
  def change
    create_table :general_comments do |t|
    	t.string :content
    	t.integer :votes
      t.timestamps
    end
  end
end
