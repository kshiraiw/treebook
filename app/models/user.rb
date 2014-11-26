class User < ActiveRecord::Base
	validates :first_name, :last_name, presence: true
	validates :email, uniqueness: true, presence: true
	validates :profile_name, uniqueness: true, 
                           presence: true,
                           format: { 
                              with: /\A[a-zA-Z0-9_-]+\Z/,
                              message: 'Must be formatted correctly.'}
  has_many :statuses
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def full_name
  	"#{first_name} #{last_name}"
  end

  def gravatar_url
    stripped_email = email.strip
    downcased_email = stripped_email.downcase
    hash = Digest::MD5.hexdigest(downcased_email)

    "http://gravatar.com/avatar/#{hash}"
  end
 end
