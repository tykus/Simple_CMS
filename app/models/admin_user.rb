class AdminUser < ActiveRecord::Base

  has_and_belongs_to_many :pages, :join_table => "admin_users_pages"
  has_many :section_edits
  has_many :sections, :through => :section_edits

  # Define a regular expression to match against the email address
  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z0-9]{2,4}\z/

  validates_presence_of :first_name
  validates_length_of :first_name, :maximum => 25
  validates_presence_of :last_name
  validates_length_of :last_name, :maximum => 50
  validates_presence_of :username
  validates_length_of :username, :within => 8..25
  validates_uniqueness_of :username
  validates_presence_of :email
  validates_length_of :email, :maximum => 100
  validates_format_of :email, :with => EMAIL_REGEX
  
end
