class CreateFollowRequests < ActiveRecord::Migration
  def change
    create_table :follow_requests do |t|
      t.integer :sender_id
      t.integer :recipient_id
      t.boolean :confirmed

      t.timestamps

    end
  end
end
