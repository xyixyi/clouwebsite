class CompanyNews < ActiveRecord::Base
    mount_uploader :image, ImageUploader
    
    #rails admin set up
    rails_admin do
        list do
          field :title do
            label "名称"
          end
          field :description do
            label "梗概"
            pretty_value do
              value.html_safe
            end
          end
          field :content do
            label "内容"
          end
          field :video_url do
            label "视频链接"
          end
          field :image, :carrierwave do
            label "封面"
          end
        end
        edit do 
          field :title do
            label "名称"
          end
          field :description do
            label "梗概"
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
