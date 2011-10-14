class Admin::BaseController < ProjectsController
  before_filter :authorize_admin!
end