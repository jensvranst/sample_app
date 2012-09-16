module StaticPagesHelper
  def full_title(page_title)
    base_title = "Ruby On Rails tuto"
    if page_title.empty?
      base_title
    else
      "#{base_title}   | #{page_title}"
    end
  end
end
