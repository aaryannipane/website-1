class User < ActiveRecord::Base
  authenticates_with_sorcery!

  ### VALIDATIONS

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates :email,
    presence: true,
    uniqueness: true,
    format: { with: /\A[^@]+@[^@]+\z/ }

  ### ASSOCIATIONS

  def admin?
    persisted?
  end

end