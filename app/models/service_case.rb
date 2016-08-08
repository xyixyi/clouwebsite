class ServiceCase < ActiveRecord::Base
  belongs_to :case_type
  mount_uploader :image, ImageUploader
  mount_uploader :attachment, AttachmentUploader
  
  #set up rails admin
  rails_admin do
    parent CaseType
    navigation_label '客户服务'
    list do 
      field :title do
        label "标题"
      end
      
      field :Type_id, :enum do
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
      field :title do
        label "标题"
        required true
      end
      field :text, :ck_editor do
        label "细节"
      end
      
      field :Type_id, :enum do
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
