class Member < ApplicationRecord
  acts_as_tenant
  belongs_to :user
  
  DEFAULT_ADMIN = {
    first_name: "Admin",
    last_name:  "Please edit me",
    favorite_color: "blue"
  }

  def self.create_new_member(user, params)
    # add any other initialization for a new member
    return user.create_member( params )
  end

  def self.create_org_admin(user)
    new_member = create_new_member(user, DEFAULT_ADMIN)
    unless new_member.errors.empty?
      raise ArgumentError, new_member.errors.full_messages.uniq.join(", ")
    end

    return new_member
  end
end
