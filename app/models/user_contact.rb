class UserContact < ApplicationRecord
  belongs_to :requesting_user_id
  belongs_to :requested_user_id
end
