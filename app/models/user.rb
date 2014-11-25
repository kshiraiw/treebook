class User < ActiveRecord::Base
	validates :first_name, :last_name, presence: true
	validates :email, uniqueness: true, presence: true
	validates :profile_name, uniqueness: true, 
                           presence: true,
                           format: { 
                              with: /a-zA-Z0-9_-/,
                              message: 'Must be formatted correctly.'}
  has_many :statuses
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def full_name
  	"#{first_name} #{last_name}"
  end

 end
