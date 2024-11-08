module I18nHelper
  # https://github.com/rails/rails/blob/master/actionview/lib/action_view/helpers/form_helper.rb#L2240-L2256
  def i18n_submit_default_value(form)
    object = convert_to_model(form.object)
    key = object ? (object.persisted? ? :update : :create) : :submit
    model = if object.respond_to?(:model_name)
      object.model_name.human
    else
      form.object_name.to_s.humanize
    end
    defaults = []
    defaults << :"helpers.submit.#{form.object_name}.#{key}"
    defaults << :"helpers.submit.#{key}"
    defaults << "#{key.to_s.humanize} #{model}"
    I18n.t(defaults.shift, model: model, default: defaults)
  end
end
