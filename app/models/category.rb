class Category < ActiveRecord::Base
    has_many :types, :dependent => :destroy
end
