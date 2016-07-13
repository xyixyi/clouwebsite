class Product < ActiveRecord::Base
    belongs_to :type
    belongs_to :type
    mount_uploader :image, ImageUploader
end
