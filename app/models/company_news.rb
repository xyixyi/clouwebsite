class CompanyNews < ActiveRecord::Base
    mount_uploader :image, ImageUploader
end
