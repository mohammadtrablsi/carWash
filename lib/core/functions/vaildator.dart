import 'package:get/get.dart';

vaildator(String val, int min, int max, ValidatorType type) {
  if (type == ValidatorType.username) {
    if (!GetUtils.isUsername(val)) {
      return "not valid username";
    }
  }
  if (type == ValidatorType.email) {
    if (!GetUtils.isEmail(val)) {
      return "not valid email";
    }
  }

  if (type == ValidatorType.phone) {
    if (!GetUtils.isPhoneNumber(val)) {
      return "not valid phone";
    }
  }

  if (val.isEmpty) {
    return "can't be Empty";
  }

  if (val.length < min) {
    return "can't be less than $min";
  }

  if (val.length > max) {
    return "can't be larger than $max";
  }
}

vaildatorRepeatPassword(val, passwordcontroller) {
  if (val.isEmpty) {
    return "can't be Empty";
  }

  if (val != passwordcontroller.text) {
    return "should password same rest password value";
  }
}

enum ValidatorType { username, email, phone, password }
