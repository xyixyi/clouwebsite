require 'elasticsearch/model'
class IndustryNews < ActiveRecord::Base
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks
    mount_uploader :image, ImageUploader
    #rails admin set up
    rails_admin do
        navigation_label '新闻'
        list do
          field :title do
            label "名称"
          end
          field :author do
            label "作者"
          end
          field :description do
            label "梗概"
          end
          
          field :image, :carrierwave do
            label "封面"
          end
          field :Authorized, :carrierwave do
            label "已审核"
          end
        end
        edit do 
          field :title do
            label "名称"
            required true
          end
          field :author do
            label "作者"
          end
          field :description, :text do
            label "梗概"
            html_attributes do
              {:maxlength => 600}
            end
          end
          field :content, :ck_editor do
            label "内容"
          end
          field :video_url do
            label "视频链接"
          end
          field :image, :carrierwave do
            label "封面"
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
IndustryNews.__elasticsearch__.create_index! force: true
IndustryNews.__elasticsearch__.refresh_index!
IndustryNews.import