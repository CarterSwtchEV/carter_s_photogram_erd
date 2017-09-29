class Like < ApplicationRecord
  # Direct associations

  belongs_to :photo_with_likes,
             :class_name => "Photo",
             :foreign_key => "photo_id",
             :counter_cache => true

  belongs_to :user_who_likes_photos,
             :class_name => "User",
             :foreign_key => "user_id",
             :counter_cache => true

  # Indirect associations

  # Validations

end
