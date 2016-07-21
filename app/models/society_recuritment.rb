class SocietyRecuritment < ActiveRecord::Base
    #set up rails admin
    
    rails_admin do
        navigation_label '招聘'
        list do 
          field :title do
            label "标题"
          end
          field :position do
            label "招聘类型"
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
          field :title do
            label "标题"
          end
          field :position do
            label "招聘类型"
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
        end
    end
end
