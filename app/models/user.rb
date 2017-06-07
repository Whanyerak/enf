class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  def full_name
    return last_name unless first_name
    return first_name unless last_name

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
