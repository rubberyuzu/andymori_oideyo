class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
    	t.string :content
    	t.references :voteable, polymorphic: true
      # t.has_many :comments
      t.timestamps
    end
  end
end
