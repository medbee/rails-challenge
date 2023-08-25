class User < ApplicationRecord
  has_many :outgoing_user_contacts, foreign_key: :requesting_user_id
  has_many :incoming_user_contacts, foreign_key: :requested_user_id

  # TODO: What can we improve about this model?

  # TODO: Implement #accepted_contacts which should return all users that have
  #       accepted contact with this user. Use test-driven development to imlement it.

  # TODO: Let #organization_contact_suggestions return all organization users
  #       which aren't contacts of this user, ordered by the number of contacts
  #       they have.
end
