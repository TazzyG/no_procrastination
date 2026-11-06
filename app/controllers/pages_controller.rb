class PagesController < ApplicationController
#  allow_unauthenticated_access only: [:home]
  def home
    format.any(:html, :all) {render :home}
  end
end
