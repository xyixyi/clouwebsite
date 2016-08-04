class CaseType < ActiveRecord::Base
    has_many :service_cases
    rails_admin do
        navigation_label '案例类型'
        list do
            field :name do
                label "标题"
            end
        end
        edit do
            field :name do
                label "标题"
                required true
            end
        end
    end
end
