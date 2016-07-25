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
        end
        
        edit do
          field :title do
            label "标题"
          end
          field :date do
            label "时间"
          end
          field :attachment, :carrierwave do
            label "上传年表"
          end
        end
    end
end
