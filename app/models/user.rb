class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :groups
  has_many :reviews
  has_many :movie_relationships
  has_many :participated_movies, :through => :movie_relationships, :source => :group
  def has_favorite?(group)
    participated_movies.include?(group)
  end
end
