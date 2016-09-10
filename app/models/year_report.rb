class YearReport < ActiveRecord::Base
    mount_uploader :attachment, AttachmentUploader
    rails_admin do
        navigation_label '投资者关系'
        list do
          field :title do
            label "标题"
          end
          field :date do
            label "时间"
          end
          field :Authorized, :carrierwave do
            label "已审核"
          end
        end
        
        edit do
          field :title do
            label "标题"
            required true
          end
          field :date do
            label "时间"
          end
          field :attachment, :carrierwave do
            label "上传年报"
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
