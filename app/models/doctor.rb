class Doctor
  include Mongoid::Document
  include Mongoid::Timestamps

  # field :doctor_id, type:Integer 
  field :first_name, type: String
  field :last_name, type: String
  field :specialty_uids, type: Array
  field :insurance_uids, type: Array
  field :practice_uid, type: String
  field :practice_name, type: String
  field :image_url, type: String
  field :address, type: String
  # field :user_ids, type: Array

  # has_and_belongs_to_many :users, primary_key: :user_id, foreign_key: :doctor_ids
  has_and_belongs_to_many :users

  index({ user_id: 1 }, { unique: true, name: "user_index" })


end
