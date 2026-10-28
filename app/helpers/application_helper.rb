module ApplicationHelper
  def full_title(page_title = "")
    base_title = "Friendly Road - Start your journey Collect your thoughts"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
end
