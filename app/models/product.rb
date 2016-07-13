class Product < ActiveRecord::Base
    belongs_to :type
    mount_uploader :image, ImageUploader
    mount_uploader :attachment, AttachmentUploader
end
