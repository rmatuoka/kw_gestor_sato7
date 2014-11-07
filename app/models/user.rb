class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation, :role
  
  attr_accessor :role  
  #has_many :teams
  #has_many :collaborators, :through => :teams, :source => :collaborator  
  #has_and_belongs_to_many :collaborators, :class_name => "User", :join_table => "collaborators_users", :foreign_key => "user_id", :association_foreign_key => "collaborator_id"
  
  #has_many :proposals
  #has_many :contacts
  #has_many :goals_sellers
  
  acts_as_authentic do |c|
    c.login_field = "email"
  end
  
  acts_as_authorization_subject :association_name => :roles, :join_table_name => :roles_users
  after_save :define_role
  
  #has_many :users
  
  def role
    @role
    if self.has_role? :admin
      @role = :admin
    elsif self.has_role? :supervisor
      @role = :supervisor
    else self.has_role? :user
      @role = :user
    end
  end

  def define_role
    if @role
      self.has_no_roles!
      self.has_role! @role
    end
  end

  def deliver_password_reset_instructions!
    reset_perishable_token!
  end
  
end
