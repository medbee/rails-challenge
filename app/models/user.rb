class User < ApplicationRecord
  has_many :outgoing_user_contacts, foreign_key: :requesting_user_id
  has_many :incoming_user_contacts, foreign_key: :requested_user_id
end
