RailsAdmin.config do |config|
  # config.authorize_with do
  #   # redirect_to main_app.root_path unless current_user.admin == true
  # end
  
  config.included_models = ["Category", "Type", "Product", "PopProduct"]
  config.model Category do
    list do
      field :name do
        label "名称"
      end
      field :description do
        label "简介"
      end
    end
    edit do 
      field :name do
        label "名称"
      end
      field :description, :ck_editor do
        label "简介"
      end
      field :image, :carrierwave do
        label "图片"
      end
    end
  end
  
  config.model Type do
    parent Category 
    list do 
      field :name do
        label "名称"
      end
      field :description do
        label "简介"
      end
      field :Category_id, :enum do
        label "产品大类"
        enum do
          Category.all.collect {|p| [p.name, p.id]}
        end
      end
    end
    edit do
      field :name do
        label "名称"
      end
      field :description, :ck_editor do
        label "简介"
      end
      field :Category_id, :enum do
        label "产品大类"
        enum do
          Category.all.collect {|p| [p.name, p.id]}
        end
      end
      field :image, :carrierwave do
        label "图片"
      end
    end
  end
  
  config.model Product do
    parent Type
    list do 
      field :name do
        label "名称"
      end
      field :synopsis do
        label "梗概"
      end
      field :detail do
        label "细节"
      end
      
      field :category_id, :enum do
        label "产品大类"
        enum do 
          Category.all.collect {|p| [p.name, p.id]}
        end
      end
      
      field :Type_id, :enum do
        label "产品小类"
        enum do
          Type.all.collect {|p| [p.name, p.id]}
        end
      end
    end
    
    edit do 
      field :name do
        label "名称"
      end
      field :synopsis do
        label "梗概"
      end
      field :detail, :ck_editor do
        label "细节"
      end
      
      field :category_id, :enum do
        label "产品大类"
        enum do 
          Category.all.collect {|p| [p.name, p.id]}
        end
      end
      
      field :Type_id, :enum do
        label "产品小类"
        enum do
          Type.all.collect {|p| [p.name, p.id]}
        end
      end
      
      field :image, :carrierwave do
        label "图片"
      end
      
      field :attachment, :carrierwave do
        label "附件"
      end
      
    end
  end
  
  config.model PopProduct do
    parent Type
    list do 
      field :name do
        label "名称"
      end
      field :synopsis do
        label "梗概"
      end
      field :detail do
        label "细节"
      end
      
      field :category_id, :enum do
        label "产品大类"
        enum do 
          Category.all.collect {|p| [p.name, p.id]}
        end
      end
      
      field :type_id, :enum do
        label "产品小类"
        enum do
          Type.all.collect {|p| [p.name, p.id]}
        end
      end
      
      field :image, :carrierwave do
        label "图片"
      end
      
      field :attachment, :carrierwave do
        label "附件"
      end     
    end
    
    edit do 
      field :name do
        label "名称"
      end
      field :synopsis do
        label "梗概"
      end
      field :detail, :ck_editor do
        label "细节"
      end
      
      field :category_id, :enum do
        label "产品大类"
        enum do 
          Category.all.collect {|p| [p.name, p.id]}
        end
      end
      
      field :type_id, :enum do
        label "产品小类"
        enum do
          Type.all.collect {|p| [p.name, p.id]}
        end
      end
      
      field :image, :carrierwave do
        label "图片"
      end
      
      field :attachment, :carrierwave do
        label "附件"
      end
      
    end
  end

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancan # add cancancan to rails_admin config
  config.current_user_method { current_user } # set up the initializer to current 
  
  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
