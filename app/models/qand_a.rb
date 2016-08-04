class QandA < ActiveRecord::Base
    belongs_to :QType
    mount_uploader :attachment, AttachmentUploader
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
                pretty_value do
                  value.html_safe
                end
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
                required true
            end
            field :question do
                label "问题"
                required true
            end
            field :answer, :ck_editor do
                label "答案"
                required true
            end
            field :QType_id, :enum do
                label "问题类别"
                required true
                enum do 
                  ::QType.all.collect {|p| [p.name, p.id]}
                end
            end
            field :attachment, :carrierwave do
                label "附件"
            end
        end
    end
end
