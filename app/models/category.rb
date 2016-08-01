class Category < ActiveRecord::Base
    has_many :types, :dependent => :destroy
    has_many :products
    mount_uploader :image, ImageUploader
    
    #rails admin set up
    rails_admin do
        navigation_label '产品类别'
        weight -10
        list do
          field :name do
            label "名称"
          end
          field :description do
            label "简介"
          end
        end
        edit do 
          field :name do
            label "名称"
          end
          field :description, :text do
            label "简介"
            pretty_value do
              value.html_safe
            end
          end
          field :image, :carrierwave do
            label "图片"
          end
        end
    end
end
