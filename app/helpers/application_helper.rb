module ApplicationHelper
  def html_renderer
    options = {filter_html: true}
    renderer = Redcarpet::Render::HTML.new(options)
  end

  def markdown(text)
    Redcarpet::Markdown.new(html_renderer).render(text).html_safe
  end
end
