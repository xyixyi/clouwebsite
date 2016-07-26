class QandA < ActiveRecord::Base
    belongs_to :QType
    rails_admin do
        navigation_label 'QA'
        parent QType
        list do
            field :title do
                label "标题"
            end
            field :question do
                label "问题"
            end
            field :answer do
                label "答案"
            end
            field :QType_id, :enum do
                label "问题类别"
                enum do 
                  QType.all.collect {|p| [p.name, p.id]}
                end
            end
        end
        edit do
            field :title do
                label "标题"
            end
            field :question do
                label "问题"
            end
            field :answer do
                label "答案"
            end
            field :QType_id, :enum do
                label "问题类别"
                enum do 
                  ::QType.all.collect {|p| [p.name, p.id]}
                end
            end
        end
    end
end
