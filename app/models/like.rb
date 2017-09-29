class Like < ApplicationRecord
  # Direct associations

  belongs_to :user_who_likes_photos,
             :class_name => "User",
             :foreign_key => "user_id",
             :counter_cache => true

  # Indirect associations

  # Validations

end
