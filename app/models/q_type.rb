class QType < ActiveRecord::Base
    has_many :qand_as, :dependent => :destroy
    rails_admin do
        navigation_label 'QA'
        list do
            field :name do
                label "标题"
            end
        end
        edit do
            field :name do
                label "标题"
            end
        end
    end
end
