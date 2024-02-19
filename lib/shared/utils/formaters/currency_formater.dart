import 'package:intl/intl.dart';


String currencyFormat(var val){
  Intl.defaultLocale = 'lo';
  String number = NumberFormat("###,###.##").format(val);
  return number;
}