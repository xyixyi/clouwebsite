# lib/rails_admin/authorize_user.rb

module RailsAdmin
  module Config
    module Actions
      class AuthorizeUser < RailsAdmin::Config::Actions::Base
        # This ensures the action only shows up for UnauthUser
        register_instance_option :visible? do
          authorized? && bindings[:object].class == UnauthUser
        end
        # We want the action on members, not the Users collection
        register_instance_option :member do
          true
        end
        register_instance_option :link_icon do
          'icon-eye-open'
        end
        # You may or may not want pjax for your action
        register_instance_option :pjax? do
          false
        end
        register_instance_option :bulkable? do
          true
        end
      end
    end
  end
end