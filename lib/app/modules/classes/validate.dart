import 'package:get/get.dart';

String? validateInput(String? value) {
    if (value!.isEmpty) {
      return 'Please enter some text';
    } else if (value.length > 25) {
      return 'Text Can\'t Be Larger Than 25';
    } else if (value.length < 2) {
      return 'Text Can\'t Be Less Than 2';
    } else if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
      return 'Enter invalid name' ;
    }
    return null;
  }

  String? validateEmail(String? value) {
  if (value!.isEmpty) {
    return 'Please enter your email';
  }
  if (!GetUtils.isEmail(value)) {
    return 'Please enter a valid email';
  }
  return null;
}

String? validatePassword(String? value) {
  if (value!.isEmpty) {
    return 'Please enter your password';
  }
  if (value.length < 6) {
    return 'Password must be at least 6 characters long';
  }
  return null;
}

String? validateWebAddress(String? value) {
  if (value!.isEmpty) {
    return 'Please enter a web address';
  }

  try {
    final Uri uri = Uri.parse(value);
    if (uri.scheme.isEmpty || uri.host.isEmpty) {
      throw const FormatException();
    }
  } on FormatException {
    return 'Please enter a valid web address';
  }

  return null;
}