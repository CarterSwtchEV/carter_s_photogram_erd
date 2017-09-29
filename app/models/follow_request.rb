class FollowRequest < ApplicationRecord
  # Direct associations

  belongs_to :sender,
             :class_name => "User"

  belongs_to :recipient,
             :class_name => "User",
             :counter_cache => :recipient_requests_count

  # Indirect associations

  # Validations

end
