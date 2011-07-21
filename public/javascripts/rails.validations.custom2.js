clientSideValidations.validators.local["phone_format"] = function(element, options) {
  if (!/^[0-9-()]+$/.test(element.val())) {
    return options.message;
  }
}