class Type < ActiveRecord::Base
    has_many :products, :dependent => :destroy
    belongs_to :category, :inverse_of => :type
    mount_uploader :image, ImageUploader
    after_update :update_category_if_type_changed
    #set up rails admin
    rails_admin do
        parent Category 
        list do 
          field :name do
            label "名称"
          end
          field :description, :text do
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
            required true
          end
          field :description, :text do
            label "简介"
          end
          field :Category_id, :enum do
            label "产品大类"
            required true
            enum do
              Category.all.collect {|p| [p.name, p.id]}
            end
          end
          field :image, :carrierwave do
            label "图片"
          end
        end
    end
    
    def update_category_if_type_changed
        if self.Category_id_changed?
          self.products.each do |p|
            byebug
            p.category_id = self.Category_id
            p.save
          end
        end
    end
end
