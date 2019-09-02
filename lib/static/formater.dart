import 'package:intl/intl.dart';

class Formatter {
  static final numC = NumberFormat("###,###.00", "en_US");
  static final dateFirst = Intl().date('dd MMM yyyy');
}
