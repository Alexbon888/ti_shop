import 'package:intl/intl.dart';

class TIFormatter {
  TIFormatter._();

  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    //assuming a 10 digits US phone number format
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    }
    else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }
    else if (phoneNumber.length == 12) {
      return '(${phoneNumber.substring(0, 5)}) ${phoneNumber.substring(5, 8)} ${phoneNumber.substring(8)}';
    }
    // add more custom phone number formatting logic
    return phoneNumber;
  }
}