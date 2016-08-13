class UnauthUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  rails_admin do
    navigation_label '用户/管理员'
    list do
      field :email do
        label "Email"
      end
      field :realName do
        label "真实姓名"
      end

      field :phoneNumber do
        label "电话号码"
      end  
      
      field :company do
        label "公司"
      end

      field :department do
        label "部门"
      end
      
      field :role do
        label "角色"
      end
    end
    edit do
        field :email do
          label "Email"
          required true
        end
        field :realName do
          label "真实姓名"
          required true
        end
    
        field :phoneNumber do
          label "电话号码"
          required true
        end  
        
        field :company do
          label "公司"
          required true
        end
    
        field :department do
          label "部门"
        end
        field :password do
          label "密码"
          required true
        end
    end
  end
end
