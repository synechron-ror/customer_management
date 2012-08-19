class Customer < ActiveRecord::Base
  attr_accessible :age, :date_of_birth, :first_name, :last_name,:email

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-zA-Z\d\-.]+\.[a-zA-Z]+\z/
  ALPHA_ONLY_REGEX = /\A[a-zA-Z]+\z/
  ALPHA_NUM_REGEX = /\A[a-zA-Z0-9_]+\z/

  # first_name and last_name should be present always and have alpha reg-ex
  validates :first_name,
    format: { with: ALPHA_ONLY_REGEX },
    presence: true

  validates :last_name,
    format: { with: ALPHA_ONLY_REGEX },
    presence: true

  validates :date_of_birth,
    presence: true

  # email should be present always, has standard validation reg-ex and should be unique
  validates :email,
    format: { with: VALID_EMAIL_REGEX },
    presence: true, uniqueness: true
  
  
end
