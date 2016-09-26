require 'elasticsearch/model'
class Bid < ActiveRecord::Base
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks
    mount_uploader :attachment, AttachmentUploader
    after_save :send_bid_email, if: :send_email? # or after_create?
    has_paper_trail
    def send_bid_email
      @users = User.all
      @bid = self
      @users.each do |user|
        BidMailer.send_bid_email(user, @bid).deliver_now
      end
      @bid.send_email = false
      @bid.save
    end
    
    #set up rails admin
    rails_admin do
        navigation_label '招标'
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
          field :Authorized do
            label "已审核"
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
          field :send_email do
            label "发送邮件通知"
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

Bid.__elasticsearch__.create_index! force: true
Bid.__elasticsearch__.refresh_index!
Bid.import