class Request < ActiveRecord::Base
  validates :name, :uniqueness => true
  has_many :httpdatas, :dependent => :destroy
end
