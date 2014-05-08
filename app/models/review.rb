class Review < ActiveRecord::Base
  belongs_to :freelancer
  belongs_to :user

end
