require 'elasticsearch/model'
class Product < ActiveRecord::Base
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks
    #may need to change :product to products --yiran
    belongs_to :type, :inverse_of => :product
    belongs_to :category, :inverse_of => :products
    mount_uploader :image, ImageUploader
    mount_uploader :attachment, AttachmentUploader
    def self.searchproduct(params)
      products = all # for not existing params args
      products = products.where("name like ?", "%#{params[:search]}%") if params[:search]
      products
    end
    
    def before_import_save(record)
      #need to change this ip to host internal ip
      self.remote_image_url = 'http://10.98.93.132/'+record[:image] if record[:image].present?  
      # File.join(Rails.root, '/files/png-sample.png')
      # self.remote_image_url = File.join(Rails.root, record[:image]) if record[:image].present? 
    end
    
    def self.search(query)
      __elasticsearch__.search(
        {
          query: {
            multi_match: {
              query: query,
              fields: ['name']
            }
          }
        }
      )
    end
    #set up rails admin
    rails_admin do
        navigation_label '产品类别'
        parent Type
        
        list do 
          field :name do
            label "名称"
          end
          field :category_id, :enum do
            label "产品大类"
            enum do 
              Category.all.collect {|p| [p.name, p.id]}
            end
          end
          
          field :Type_id, :enum do
            label "产品小类"
            enum do
              ::Type.all.collect {|p| [p.name, p.id]}
            end
          end
          
          field :image, :carrierwave do
            label "图片"
          end
          
          field :Authorized do
            label "已审核"
          end     
        end
        
        
        
        
        show do
          field :name do
            label "名称"
          end
          
          field :synopsis do
            label "梗概"
            pretty_value do
              value.html_safe
            end
          end
          
          field :category_id, :enum do
            label "产品大类"
            enum do 
              Category.all.collect {|p| [p.name, p.id]}
            end
          end
          
          field :Type_id, :enum do
            label "产品小类"
            enum do
              ::Type.all.collect {|p| [p.name, p.id]}
            end
          end
          
          field :image, :carrierwave do
            label "图片"
          end
          
          field :attachment, :carrierwave do
            label "附件"
          end   
          field :detail do
            label "细节"
            pretty_value do
              value.html_safe unless value.blank?
            end
          end
        end
        
        edit do 
          field :name do
            label "名称"
            required true
          end
          field :synopsis, :text do
            label "梗概"
            html_attributes do
              {:maxlength => 300}
            end
          end
          field :detail, :ck_editor do
            label "细节"
          end
          
          field :category_id, :enum do
            label "产品大类"
            required true
            enum do 
              Category.all.collect {|p| [p.name, p.id]}
            end
          end
          
          field :Type_id do
            label "产品小类"
            required true
            
            render do
              # byebug
              bindings[:view].render :partial => "rails_admin/main/add_type_base_on_category", :locals => {:select_type => bindings[:object], :form => bindings[:form]}
            end

          end
          
          field :seo_title do
            label "SEO 标题"
          end  
          
          field :seo_word do
            label "SEO 关键字"
          end  
          
          field :image, :carrierwave do
            label "图片"
          end
          
          field :attachment, :carrierwave do
            label "附件"
          end
          
          
          field :Authorized do
            # byebug
            label '审核'
              
              # render do
              #   bindings[:view].render :partial  => "rails_admin/main/check_box", :locals => {:field => self}
              # end
          end
        end
    end
end
Product.__elasticsearch__.create_index! force: true
Product.__elasticsearch__.refresh_index!
Product.import