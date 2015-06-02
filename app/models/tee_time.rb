class TeeTime < ActiveRecord::Base
  belongs_to :user
  belongs_to :course
end
