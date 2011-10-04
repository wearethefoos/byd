class DiveCenter
  include Mongoid::Document
  field :name, :type => String
  field :url, :type => String
  field :email, :type => String
  
  validates :name, :email, :presence => true
end
