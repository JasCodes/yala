import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:yala/hooks/use_observer.dart';
import 'package:yala/models/user.dart';
import 'package:yala/screens/accounts/widgets/chart/chart_store.dart';
import 'package:yala/static/icons.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/primitives/animated_number.dart';
import 'package:yala/widgets/primitives/iconx.dart';

enum DirIcon { Left, Right, Up, Down }

class AccountsSliderItemInfoSection extends HookWidget {
  static const WIDGET_HEIGHT = 176.3;
  final int index;
  final PageController pageController;

  const AccountsSliderItemInfoSection(
    this.index,
    this.pageController, {
    Key key,
  }) : super(key: key);

  Widget _buildDirIcon(DirIcon type,
      {double size, Color color = Colors.white}) {
    var quarterTurns;
    switch (type) {
      case DirIcon.Up:
        quarterTurns = 0;
        break;
      case DirIcon.Down:
        quarterTurns = 2;
        break;
      case DirIcon.Left:
        quarterTurns = -1;
        break;
      case DirIcon.Right:
        quarterTurns = 1;
    }
    return Container(
      child: RotatedBox(
        quarterTurns: quarterTurns,
        child: IconX(
          IconsX.dir,
          color: color,
          size: size,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    useObserver();

    final nf = NumberFormat('#00.00', 'en_US');
    final nfC = NumberFormat('##,###,##.00', 'en_US');
    final store = Provider.of<User>(context);
    final chartStore = Provider.of<ChartStore>(context);
    var account = store.accounts[index];
    var currBalance = account.balances[chartStore.knobIndex];
    var prevBalance = account.balances[chartStore.knobIndex + 1];
    var deltaBalance = currBalance - prevBalance;
    var deltaBalancePer = (currBalance - prevBalance) / prevBalance * 100;

    var balanceDir = deltaBalance >= 0 ? DirIcon.Up : DirIcon.Down;
    var rgColor = deltaBalance >= 0 ? Color(0xff83feda) : Color(0xffffd1d1);
    return Container(
      height: WIDGET_HEIGHT,
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    _buildDirIcon(DirIcon.Left, size: 23.3),
                    Column(children: <Widget>[
                      Text(
                        account.type,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.7,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 4.7,
                      ),
                      Text(
                        account.number,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 12,
                        ),
                      ),
                    ]),
                    _buildDirIcon(DirIcon.Right, size: 23.3),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () => pageController.previousPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  ),
                  child: Container(
                    color: Colors.transparent,
                    height: 80,
                    width: 80,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () => pageController.nextPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  ),
                  child: Container(
                    color: Colors.transparent,
                    height: 80,
                    width: 80,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(11.7),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 33,
                      child: Text(
                        account.currencyCode.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    AnimatedNumber(
                      number: account.balances[chartStore.knobIndex],
                      duration: Duration(milliseconds: 400),
                      format: nfC,
                      curve: Curves.fastOutSlowIn,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    // Text(nf.format(account.balances[chartStore.knobIndex])),
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                AnimatedDefaultTextStyle(
                  duration: Duration(milliseconds: 300),
                  style: TextStyle(
                    fontFamily: Style.primaryFont,
                    color: rgColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      AnimatedSwitcher(
                        duration: Duration(milliseconds: 200),
                        child: Container(
                          key: ObjectKey(balanceDir),
                          child: _buildDirIcon(
                            balanceDir,
                            size: 14.3,
                            color: rgColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      AnimatedNumber(
                        number: deltaBalance.abs(),
                        duration: Duration(milliseconds: 400),
                        format: nf,
                        curve: Curves.fastOutSlowIn,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '(',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      AnimatedNumber(
                        number: deltaBalancePer,
                        duration: Duration(milliseconds: 400),
                        format: nf,
                        curve: Curves.fastOutSlowIn,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '%)',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
