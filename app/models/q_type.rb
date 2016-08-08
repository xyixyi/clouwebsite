class QType < ActiveRecord::Base
    has_many :qand_as, :dependent => :destroy
    rails_admin do
        navigation_label '客户服务'
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
