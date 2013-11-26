class FormDecorator
  def initialize(attributes = {})
    @form = attributes.fetch(:form) { :no_form_set }
    @logger = attributes.fetch(:logger) { NullObject.new }
  end

  def render
    rows = []
    rows << form_begin
    rows << form_wrapper_begin

    @form[:fields].each do |field|
      name = field.fetch(:name) { :no_name_set }
      label = field.fetch(:label) { :no_label_set }
      type = field.fetch(:type) { :no_type_set }
      required = field.fetch(:required) { :no_required_set }
      rows << form_row(label, type, name)
    end

    rows << submit_button
    rows << form_wrapper_end
    rows << form_end

    rows.join
  end

  def form_begin(action = '/', method = 'post')
    "<form action='#{action}' method='#{method}'>"
  end

  def form_end
    "</form>"
  end

  def text_field(name)
    "<input type='text_field' id='#{name}' />"
  end
end
