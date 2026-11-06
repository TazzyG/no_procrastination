class PagesController < ApplicationController
 allow_unauthenticated_access only: [:home]
  def home
  respond_to do |format|
    # Explicitly handles standard web requests
    format.html { render :home }

    # Catches all other weird media types or crawler formats (like Facebot/Twitterbot)
    # and forces them to render your home template safely as HTML
    format.any { render :home, formats: [:html] }
    end
  end
end
