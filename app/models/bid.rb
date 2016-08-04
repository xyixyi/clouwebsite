class Bid < ActiveRecord::Base
    mount_uploader :attachment, AttachmentUploader
    #set up rails admin
    rails_admin do
        navigation_label '投标'
        weight +1
        list do 
          #title
          field :position do
            label "招标项目"
          end
          field :department do
            label "部门"
          end
          field :deadline do
            label "截止日期"
          end
          field :description do
            label "简介"
            pretty_value do
              value.html_safe
            end
          end
        end
        edit do
          field :position do
            label "招标项目"
            required true 
          end
          field :department do
            label "部门"
          end
          field :deadline do
            label "截止日期"
          end
          field :description, :ck_editor do
            label "简介"
          end
          field :attachment, :carrierwave do
            label "附件"
          end
        end
    end
end
