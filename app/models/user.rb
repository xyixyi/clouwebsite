class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  after_update :send_password_change_email, if: :needs_password_change_email?
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  serialize :authority, Array
  def authorities_enum
      [ ['产品类别', 'Category, Type, Product, PopProduct'], [ 'QA', 'QType, QandA' ], [ '新闻', 'CompanyNews, IndustryNews'] ,
      ['投资者关系', 'Announcement, YearReport'], ['员工讯息', 'EmployeeStory'], ['案例类型', 'CaseType, ServiceCase'], 
      ['招聘', 'SocietyRecuritment, CampusRecuritment'], ['行业新闻', 'IndustryNews'] ,['用户/管理员', 'User'], 
      ['问题类型', 'QType'], ['投标', 'Bid']]
  end
  
  # def has_role?( role )
  #     # example called from cancan's app/models/ability.rb
  #     # if user.has_role?( :ADMIN

  #     # for roles array stored in db... take each value, see if it matches the second column in the roles_enum array, if so, return the 1st col of the enum as a uprcase,space_to_underscore,symbol .
  #     assigned_roles = self.authority.map { |r| self.authorities_enum.rassoc(r)[0].gsub(/ /, '_').upcase.to_sym }
  #     assigned_roles.include?( role )
  # end

  rails_admin do
    navigation_label '用户/管理员'
    list do
      field :email do
        label "Email"
      end
      field :password do
        label "密码"
      end
      field :role do
        label "角色"
      end
    end
    edit do
        field :email do
          label "Email"
        end
        field :password do
          label "密码"
        end
        field :role, :enum do
          label "角色"
          required true
          enum do
            if bindings[:view]._current_user.role == "developer"
              ['user', 'admin', 'superadmin']
            else
              ['user', 'admin']
            end
          end
        end
        field :authority do
          label "限权"
          required true
          
          # render do
          #     bindings[:form].select( "authority", bindings[:object].authorities_enum, {}, {:multiple => true, :size => 10, :class => "selectpicker"})
          # end
          partial :multiselect_box

        end
    end
  end
  
  def needs_password_change_email?
    encrypted_password_changed? && persisted?
  end

  def send_password_change_email
    UserMailer.password_changed(id).deliver_now
  end
end
