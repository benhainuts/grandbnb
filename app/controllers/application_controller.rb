class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  #Ex:- add_index("admin_users", "username")
end
