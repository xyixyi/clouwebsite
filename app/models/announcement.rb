class Announcement < ActiveRecord::Base
    rails_admin do
        navigation_label '投资者关系'
        list do
          field :date do
            label "时间"
          end
          field :link do
            label "链接"
          end
        end
        
        edit do
          field :date do
            label "时间"
          end
          field :link do
            label "链接"
          end
        end
    end
end
