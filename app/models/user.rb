class User < ApplicationRecord
  # Direct associations

  has_many   :sender_requests,
             :class_name => "FollowRequest",
             :foreign_key => "sender_id",
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  has_many   :recipient_requests,
             :class_name => "FollowRequest",
             :foreign_key => "recipient_id",
             :dependent => :destroy

  # Indirect associations

  has_many   :photos_with_comments,
             :through => :comments,
             :source => :photo_with_comments

  has_many   :photos_with_likes,
             :through => :likes,
             :source => :photo_with_likes

  has_many   :followers,
             :through => :recipient_requests,
             :source => :sender

  has_many   :following,
             :through => :sender_requests,
             :source => :recipient

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
