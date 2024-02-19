import 'package:intl/intl.dart';



String dateTimeFormat(DateTime val){
  String date = DateFormat("dd-MM-yyyy | HH:mm:ss a").format(val);
  return date;
}
