class User < ActiveRecord::Base
  enum role: [:normal_user, :admin]
  enum status: [:não_confirmado, :confirmado]
  
  #relactions
  has_many :registereds
  has_many :courses,
    :through => :registereds

  has_one :panelist

  validates :name, presence: true
  validates :cpf, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :telephone, presence: true
  validates :institution, presence: true
  validates :birthday, presence: true

  accepts_nested_attributes_for :registereds
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
