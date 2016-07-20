class Type < ActiveRecord::Base
    has_many :products, :dependent => :destroy
    belongs_to :category
    mount_uploader :image, ImageUploader
    
    #set up rails admin
    rails_admin do
        parent Category 
        list do 
          field :name do
            label "名称"
          end
          field :description, :ck_editor do
            label "简介"
          end
          field :Category_id, :enum do
            label "产品大类"
            enum do
              Category.all.collect {|p| [p.name, p.id]}
            end
          end
        end
        edit do
          field :name do
            label "名称"
          end
          field :description, :ck_editor do
            label "简介"
          end
          field :Category_id, :enum do
            label "产品大类"
            enum do
              Category.all.collect {|p| [p.name, p.id]}
            end
          end
          field :image, :carrierwave do
            label "图片"
          end
        end
    end
end
