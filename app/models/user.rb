class User < ApplicationRecord
  after_create :assign_default_role
  resourcify
  rolify

  def assign_default_role
    add_role(:student)
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
