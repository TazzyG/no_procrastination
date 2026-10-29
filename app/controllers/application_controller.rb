class ApplicationController < ActionController::Base
  before_action :prepare_meta_tags
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes
private

  def prepare_meta_tags(options = {})
    site_name   = "Friendly Road"

    description = options["track what matters"]
    current_url = request.original_url

    defaults = {
      site:        site_name,
      title:       title,
      reverse:     true,
      description: description,

      og: {
        url: current_url,
        title: title,
        description: description,
        type: 'website',
        image: asset_url('fr_thumb2.jpg')
         [ width: 1200,
          height: 630 ]
    }

    set_meta_tags(defaults)
  end

end
