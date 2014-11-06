class Role < ActiveRecord::Base
  attr_accessible :name, :authorizable_type, :authorizable_id
  acts_as_authorization_role :join_table_name => :roles_users
end
