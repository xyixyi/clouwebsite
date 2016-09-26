class Trouble < ActiveRecord::Base
  has_paper_trail
  rails_admin do
    navigation_label '客户服务'
    list do
      field :email do
        label "邮箱"
      end
      field :name do
        label "姓名"
      end
      field :phonenumber do
        label "电话"
      end
      field :solved do
        label "已解决"
      end
      field :text, :text do
          label "内容"
      end
    end
    
    edit do
      field :email do
        label "邮箱"
      end
      field :name do
        label "姓名"
      end
      field :phonenumber do
        label "电话"
      end
      field :solved do
        label "已解决"
      end
      field :text, :text do
          label "内容"
      end
    end
  end
end
