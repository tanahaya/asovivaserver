class User < ActiveRecord::Base
     validates :text, presence: true
     
end
