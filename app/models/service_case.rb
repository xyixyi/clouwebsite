require 'elasticsearch/model'
class ServiceCase < ActiveRecord::Base
  belongs_to :case_type
  mount_uploader :image, ImageUploader
  mount_uploader :attachment, AttachmentUploader
  has_paper_trail
  #set up rails admin
  rails_admin do
    parent CaseType
    navigation_label '客户服务'
    list do 
      field :title do
        label "标题"
      end
      
      field :case_type_id, :enum do
        label "案例类型"
        enum do
          ::CaseType.all.collect {|p| [p.name, p.id]}
        end
      end
      
      field :image, :carrierwave do
        label "图片"
      end
      
      field :attachment, :carrierwave do
        label "附件"
      end  
      field :Authorized do
        label "已审核"
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
      
      field :case_type_id, :enum do
        label "案例类型"
        enum do
          ::CaseType.all.collect {|p| [p.name, p.id]}
        end
      end
      
      field :image, :carrierwave do
        label "图片"
      end
      
      field :attachment, :carrierwave do
        label "附件"
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
