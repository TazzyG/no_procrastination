class PagesController < ApplicationController
 allow_unauthenticated_access only: [:home]
  def home
    # request.format = :html
    #   render :home

      @posts = Admin::Post.all.order(created_at: :desc).limit(15)
  end
end
