class PagesController < ApplicationController
   def home
    respond_to do |format|
      # Forces Rails to treat any incoming format request from bots as standard HTML
      format.any(:html, :all) { render :home }
    end
end
