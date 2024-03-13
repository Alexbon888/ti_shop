class TIValidator {
  TIValidator._();

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }

    //regular expression for email validation
    final emailRegExp =RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }

    //check for minimum password length
    if (value.length <6) {
      return 'Password must be at least 6 characters long.';
    }

    //check for uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least 1 uppercase letter.';
    }

    //check for number
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least 1 number.';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required.';
    }

    //regular expression for phone number validation (assuming a 12 digits INA phone number format)
    final phoneRegExp =RegExp(r'^\d{12}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format (12 digits is required).';
    }

    return null;
  }
}