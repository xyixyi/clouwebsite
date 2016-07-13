class Category < ActiveRecord::Base
    has_many :types, :dependent => :destroy
    has_many :products
    mount_uploader :image, ImageUploader
end
