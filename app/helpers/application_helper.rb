module ApplicationHelper
  def html_renderer
    options = {filter_html: true}
    renderer = Redcarpet::Render::HTML.new(options)
  end

  def markdown(text)
    Redcarpet::Markdown.new(html_renderer).render(text).html_safe
  end

  def bootstrap_class_for flash_type
    case flash_type
    when 'success'
      'alert-success' # Green
    when 'danger'
      'alert-danger' # Red
    when 'warning'
      'alert-warning' # Yellow
    when 'info'
      'alert-info' # Blue
    else
      flash_type.class.to_s
    end
  end
end
