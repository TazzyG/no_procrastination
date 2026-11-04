# app/controllers/admin/base_controller.rb
class Admin::BaseController < ApplicationController
  # This method is provided automatically by Rails 8 authentication
  before_action :require_authentication

  layout "admin" # Optional: if you want a separate CSS layout for admin pages
end
