import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yala/navigation/bottom_nav/bottom_nav_store.dart';
import 'package:yala/navigation/navigator_map.dart';
import 'package:yala/static/icons.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/buttons/decorated_list_white_button.dart';
import 'package:yala/widgets/primitives/iconx.dart';
import 'package:yala/widgets/scaffolds/status_text.dart';

class AccountsUpcomingPaymentSection extends StatelessWidget {
  const AccountsUpcomingPaymentSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomNavStore = Provider.of<BottomNavStore>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.7),
      child: Row(
        children: <Widget>[
          DecoratedListWhiteButton(
            onTap: () => bottomNavStore.navigator = NavigatorX.billpayment,
            icon: Container(
              // width: 14.7,
              height: 14.7,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/logos/du.png'),
                ),
              ),
            ),
            title: 'du Payment',
            subTitle: 'for Office Phone',
          ),
          SizedBox(
            width: 15,
          ),
          DecoratedListWhiteButton(
            onTap: () => bottomNavStore.navigator = NavigatorX.payroll,

            icon: IconX(
              faRegular(''),
              size: 14.7,
              color: Style.greyColor,
            ),
            // iconData: ,
            title: 'Run Payroll',
            dot: true,
            type: StatusTextType.RED,
            subTitle: 'due in 2 days',
          ),
        ],
      ),
    );
  }
}
