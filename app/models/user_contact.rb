class UserContact < ApplicationRecord
  belongs_to :requesting_user
  belongs_to :requested_user

  # TODO: What can we improve about this model?
end
