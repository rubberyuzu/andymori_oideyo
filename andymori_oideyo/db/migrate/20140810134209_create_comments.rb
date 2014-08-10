class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string :content
    	t.references :voteable, polymorphic: true
    	t.belongs_to :line
      t.timestamps
    end
  end
end
