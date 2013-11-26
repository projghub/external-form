class HtmlDecorator < FormDecorator
  def initialize(attributes = {})
    super
  end

  def form_wrapper_begin
    "<table>"
  end

  def form_wrapper_end
    "</table>"
  end

  def form_row(label, type, name)
    "<tr><td>#{label}</td><td>#{send(type, name)}</td></tr>"
  end

  def submit_button
    "<tr><td></td><td><input type='submit' /></td></tr>"
  end
end
