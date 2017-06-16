class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true

  def full_name
  	first_name + " " + last_name
  end

  def self.branches
    ['Louveteaux', 'Éclaireurs', 'Routiers']
  end

  def self.branches_collection
    branches.map.with_index do |n, i|
      [n,  i]
    end
  end
end
