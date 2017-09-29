class AddRecipientRequestCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :recipient_requests_count, :integer
  end
end
