class PagesController < ApplicationController
 allow_unauthenticated_access only: [:home]
  def home
    request.format = :html
      render :home
  end
end
