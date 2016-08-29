require 'elasticsearch/model'
class SpecialNewsTwo < ActiveRecord::Base
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks
    mount_uploader :image, ImageUploader
    #rails admin set up
    rails_admin do
        navigation_label '新闻'
        list do
          field :id do 
            label "id"
          end
          field :title do
            label "名称"
          end
          field :author do
            label "作者"
          end
          field :description do
            label "梗概"
          end
          # field :content do
          #   label "内容"
          #   pretty_value do
          #     value.html_safe
          #   end
          # end
          # field :video_url do
          #   label "视频链接"
          # end
          field :image, :carrierwave do
            label "封面"
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
        end
    end
end
SpecialNewsTwo.__elasticsearch__.create_index! force: true
SpecialNewsTwo.__elasticsearch__.refresh_index!
SpecialNewsTwo.import