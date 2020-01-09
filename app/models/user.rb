class User
  include Mongoid::Document
  include Mongoid::Timestamps
  
  # field :user_id, type:Integer 
  field :name, type: String
  field :insurance_uid, type: String
  field :location, type: String
  # field :doctor_ids, type: Array

  # has_and_belongs_to_many :doctors, primary_key: :doctor_id, foreign_key: :user_ids
  has_and_belongs_to_many :doctors

  # index({ user_id: 1 }, { unique: true, name: "user_index" })

end
