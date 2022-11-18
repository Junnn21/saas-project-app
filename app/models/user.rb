class User < ApplicationRecord
  acts_as_universal_and_determines_account
  has_one :member, :dependent => :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :payment
  accepts_nested_attributes_for :payment
  has_many :images
  has_many :user_projects
  has_many :projects, through: :user_projects
  
  def is_admin?
    is_admin
  end
end
