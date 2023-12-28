module TaskDecorator
  def description_html
    description.html_safe
  end
end