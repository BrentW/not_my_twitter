class User
has_many :tweets
has_many :followers
has_many :following, through: :followers
end