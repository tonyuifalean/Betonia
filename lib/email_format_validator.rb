class EmailFormatValidator < ActiveModel::EachValidator
    def validate_each(object, attribute, value)
    unless value =~ /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
      object.errors.add(attribute, :email_format, options)
    end
  end
end