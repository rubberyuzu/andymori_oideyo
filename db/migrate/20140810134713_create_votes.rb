class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
    	t.integer :voteable_id
    	t.string :voteable_type
    	t.integer :value, default: 1
      t.timestamps
    end
  end
end
