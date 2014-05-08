class Freelancer < ActiveRecord::Base
  has_many :reviews
  has_many :past_works
end