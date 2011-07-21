class PhoneFormatValidator < ActiveModel::EachValidator
  def validate_each(object, attribute, value)
    unless value =~ /^[0-9-()]+$/
      object.errors.add(attribute, :phone_format, options)
    end
  end
end
