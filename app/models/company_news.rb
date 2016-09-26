require 'elasticsearch/model'
class CompanyNews < ActiveRecord::Base
    include Elasticsearch::Model
    mount_uploader :image, ImageUploader
    has_paper_trail
    def before_import_save(record)
    # Your custom special sauce
      
      self.title = record[:title] if record[:title].present?
      self.image = record[:image] if record[:image].present?
      self.content = record[:content] if record[:content].present?
    end

    def self.search(query)
      __elasticsearch__.search(
        {
          query: {
            multi_match: {
              query: query,
              fields: ['title']
            }
          }
        }
      )
    end
    
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
          field :Authorized do
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
            default_value do
              bindings[:view]._current_user.realName
            end
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
CompanyNews.__elasticsearch__.create_index! force: true
CompanyNews.__elasticsearch__.refresh_index!
CompanyNews.import