module DeviseHelper
  def devise_error_messages!
    return "" unless devise_error_messages?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    sentence = I18n.t("errors.messages.not_saved",
                      :count => resource.errors.count,
                      :resource => resource.class.model_name.human.downcase)

    html = <<-HTML
    <div class="alert alert-danger">
      <button type="button" class="close" data-dismiss="alert">x</button>
      <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
      <span class="sr-only">Error:</span>
      <h4>#{sentence}</h4>
      #{messages}
    </div>
    HTML
    html.html_safe
  end

  def devise_error_messages?
    !resource.errors.empty?
  end

end