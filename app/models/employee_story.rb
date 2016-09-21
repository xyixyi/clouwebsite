require 'elasticsearch/model'
class EmployeeStory < ActiveRecord::Base
    include Elasticsearch::Model
    mount_uploader :image, ImageUploader
    
    rails_admin do
        navigation_label '人力资源'
        list do
          field :title do
            label "标题"
          end
          field :name do
            label "姓名"
          end
          field :date do
            label "时间"
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
          field :name do
            label "姓名"
          end
          field :date do
            label "时间"
          end
          field :image, :carrierwave do
            label "图片"
            # help "图片上传之前请添加一个黑色透明度40%遮罩"
          end
          field :text, :ck_editor do
            label "文章"
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
