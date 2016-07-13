class Product < ActiveRecord::Base
    belongs_to :type
    belongs_to :category
    mount_uploader :image, ImageUploader
    mount_uploader :attachment, AttachmentUploader
end
