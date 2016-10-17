class Clounewspapers < ActiveRecord::Base
    mount_uploader :image, ImageUploader
    mount_uploader :attachment, AttachmentUploader
    has_paper_trail
    rails_admin do
        navigation_label '新闻'
        list do 
            field :title do
                label "标题"
            end
        end
        edit do
            field :title do
                label "标题"
             required true 
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