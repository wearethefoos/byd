class DiveCenter
  include Mongoid::Document
  field :name, :type => String
  field :url, :type => String
  field :email, :type => String
  field :code, :type => String
  field :mailinglist, :type => Boolean
  
  validates :name, :email, :presence => true
end
