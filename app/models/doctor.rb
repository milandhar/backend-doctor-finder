class Doctor
  include Mongoid::Document
  include Mongoid::Timestamps
  field :first_name, type: String
  field :last_name, type: String
  field :specialty_uids, type: Array
  field :insurance_uids, type: Array
  field :practice_uid, type: String
  field :practice_name, type: String
  field :image_url, type: String
  field :address, type: String
end
