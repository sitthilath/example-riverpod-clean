
import 'package:intl/intl.dart';

String formatPhoneNumber(String phoneNumber) {
  if (phoneNumber.length == 11) {
    return NumberFormat('### #######').format(int.parse(phoneNumber));
  } else if (phoneNumber.length == 10) {
    return NumberFormat('### #######').format(int.parse("0$phoneNumber"));
  } else {
    return phoneNumber;
  }
}

String formatPhoneNumberCensor(String phoneNumber) {
  if (phoneNumber.length == 11) {
    String formattedNumber = NumberFormat('### #######').format(int.parse(phoneNumber));
    return formattedNumber.replaceRange(6, 11, 'XXXXXX');
  } else if (phoneNumber.length == 10) {
    String formattedNumber = NumberFormat('### ########').format(int.parse("0$phoneNumber"));
    return formattedNumber.replaceRange(6, 11, 'XXXXXX');
  } else {
    return phoneNumber;
  }
}