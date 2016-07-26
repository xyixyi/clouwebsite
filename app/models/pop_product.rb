class PopProduct < ActiveRecord::Base
  belongs_to :Type
  belongs_to :category
  mount_uploader :image, ImageUploader
  mount_uploader :attachment, AttachmentUploader
  
  #set up rails admin
  rails_admin do
    navigation_label '产品类别'
    parent Type
    list do 
      field :name do
        label "名称"
      end
      field :synopsis do
        label "梗概"
        pretty_value do
          value.html_safe
        end
      end
      field :detail do
        label "细节"
      end
      
      field :category_id, :enum do
        label "产品大类"
        enum do 
          Category.all.collect {|p| [p.name, p.id]}
        end
      end
      
      field :type_id, :enum do
        label "产品小类"
        enum do
          ::Type.all.collect {|p| [p.name, p.id]}
        end
      end
      
      field :image, :carrierwave do
        label "图片"
      end
      
      field :attachment, :carrierwave do
        label "附件"
      end     
    end
    
    edit do 
      field :name do
        label "名称"
      end
      field :synopsis, :text do
        label "梗概"
        html_attributes do
          {:maxlength => 600}
        end
      end
      field :detail, :ck_editor do
        label "细节"
      end
      
      field :category_id, :enum do
        label "产品大类"
        enum do 
          Category.all.collect {|p| [p.name, p.id]}
        end
      end
      
      field :type_id, :enum do
        label "产品小类"
        enum do
          ::Type.all.collect {|p| [p.name, p.id]}
        end
      end
      
      field :image, :carrierwave do
        label "图片"
      end
      
      field :attachment, :carrierwave do
        label "附件"
      end
    end
  end
end
