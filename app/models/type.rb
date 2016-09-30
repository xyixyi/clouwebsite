class Type < ActiveRecord::Base
    has_many :products, :dependent => :destroy
    belongs_to :category
    mount_uploader :image, ImageUploader
    has_paper_trail
    #set up rails admin
    rails_admin do
        parent Category 
        list do 
          field :id do 
            label "id"
          end
          field :name do
            label "名称"
          end
          # field :description, :text do
          #   label "简介"
          # end
          field :category_id, :enum do
            label "产品大类"
            enum do
              Category.all.collect {|p| [p.name, p.id]}
            end
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
          field :category_id, :enum do
            label "产品大类"
            required true
            enum do
              Category.all.collect {|p| [p.name, p.id]}
            end
          end
          # field :image, :carrierwave do
          #   label "图片"
          # end
          field :Authorized do
            label '审核'
            render do
              bindings[:view].render :partial  => "rails_admin/main/check_box", :locals => {:field => self, :select_user => bindings[:object]}
            end
          end
        end
    end
end
