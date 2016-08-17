require 'elasticsearch/model'
class Honor < ActiveRecord::Base
    include Elasticsearch::Model
    rails_admin do
        weight -10
        navigation_label '新闻'
        list do
            field :title do
                label "标题"
            end
        end
        edit do
            field :title do
                label "标题"
                required true
            end
            field :text, :ck_editor do
                label "荣誉"
            end
        end
    end
end
