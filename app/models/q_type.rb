class QType < ActiveRecord::Base
    has_many :qand_as, :dependent => :destroy
    rails_admin do
        navigation_label '客户服务'
        list do
            field :name do
                label "标题"
            end
            field :Authorized do
                label "已审核"
            end
        end
        edit do
            field :name do
                label "标题"
                required true
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
