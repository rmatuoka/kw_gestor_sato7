class ClientContract < ActiveRecord::Base
  attr_accessible :active, :published, :client_id, :nome, :link
end
