class Category < ActiveRecord::Base
    has_many :types, :dependent => :destroy
    has_many :products
    mount_uploader :image, ImageUploader
    has_paper_trail
    #rails admin set up
    rails_admin do
        navigation_label '产品'
        weight -10
        list do
          field :id do 
            label "id"
          end
          field :name do
            label "名称"
          end
          field :language do
            label "语言"
          end
          field :Authorized do
            label "已审核"
          end
        end
        edit do 
          field :name do
            label "名称"
             required true 
          end
          # field :description, :text do
          #   label "简介"
          # end
          field :image, :carrierwave do
            label "图片"
          end
          field :language, :enum do
            enum do 
              ['中文', 'English']
            end
            label '语言'
          end
          field :Authorized do
            label '审核'
              render do
                bindings[:view].render :partial  => "rails_admin/main/check_box", :locals => {:field => self, :select_user => bindings[:object]}
              end
          end
        end
    end
end
