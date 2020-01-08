class User
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :insurance_uid, type: String
  field :location, type: String

  # attr_accessor :name, :insurance_uid, :loaction 

  # validates_presence_of :name, :on => :create

end
