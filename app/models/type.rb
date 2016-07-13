class Type < ActiveRecord::Base
    has_many :products, :dependent => :destroy
    belongs_to :category
    mount_uploader :image, ImageUploader
end
