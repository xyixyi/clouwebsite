RailsAdmin.config do |config|
  # config.authorize_with do
  #   # redirect_to main_app.root_path unless current_user.admin == true
  # end
  
  config.included_models = ["Category", "Type", "Product", "PopProduct", "CompanyNews", 
                                                "IndustryNews", "Bid", "CampusRecuritment", "SocietyRecuritment", "User"]
  
  config.model Type do
    parent Category
  end
  
  config.model Product do
    parent Type
  end
  
  config.model PopProduct do
    parent Type
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
