require 'form_decorator'

class StaticPagesController < ApplicationController
  def index
  end

  def javascript
  end

  def javascript_form
    form = {
      fields: [{
        name: 'first_name',
        label: 'First Name',
        type: 'text_field',
        required: true
      }]
    }

    @form = HtmlDecorator.new({ form: form, logger: Rails::logger }).render
    #logger.info "FORM " + @form.inspect

    respond_to do |format|
      format.js
    end
  end

  def token
    @token = params[:token]
  end
end
