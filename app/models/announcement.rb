class Announcement < ActiveRecord::Base
    self.inheritance_column = nil
    has_paper_trail
    rails_admin do
        navigation_label '投资者关系'
        list do
          field :title do
            label "标题"
          end
          field :date do
            label "时间"
          end
          field :type do
            label "公告类型"
          end
          # field :Authorized do
          #   label "已审核"
          # end  
          
        end
        
        edit do
          field :title do
            label "标题"
            required true 
          end
          field :date do
            label "时间"
            required true
          end
          field :type, :enum do
            label "公告类型"
            required true
            enum do
              ['董事会', '监事会',"股东大会", "其他"]
            end
          end
          field :link do
            label "链接"
            required true
          end
          # field :Authorized do
          #   label '审核'
          #     render do
          #       bindings[:view].render :partial  => "rails_admin/main/check_box", :locals => {:field => self, :select_user => bindings[:object]}
          #     end
          # end
        end
    end
end
