module ApplicationHelper
  # Returns the full title on a per-page basis.
  def app_title(page_title = '')
    base_title = "LibSys-Your online library"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
