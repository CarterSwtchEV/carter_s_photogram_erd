class Photo < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  # Indirect associations

  has_many   :users_who_likes_photos,
             :through => :likes,
             :source => :user_who_likes_photos

  # Validations

end
