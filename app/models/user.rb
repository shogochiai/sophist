class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates_presence_of :email
  validates_uniqueness_of :email
  validates_format_of :email, with: /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i, multiline: true
  validates_length_of :password, minimum: 6, if: :password
  validates_confirmation_of :password, if: :password
end