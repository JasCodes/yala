import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:yala/models/user.dart';
import 'package:yala/static/style.dart';

class AccountsRecentTransactionsSection extends StatelessWidget {
  const AccountsRecentTransactionsSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    var transactions = user.transactions.reversed.toList();
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Upcoming Payments',
            style: TextStyle(
              fontSize: 13.3,
              color: Style.greyColor,
            ),
          ),
          SizedBox(
            height: 7.7,
          ),
          Container(
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              itemCount: transactions.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 11.7, vertical: 12.3),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            // fit: BoxFit,
                            image: AssetImage(transactions[index].to.imagePath),
                          ),
                          // shape: BoxShape.circle,
                        ),
                        height: 31.7,
                        width: 31.7,
                      ),
                      SizedBox(
                        width: 11,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              transactions[index].to.title,
                              style: TextStyle(
                                color: Style.blackColor,
                                fontSize: 15.3,
                              ),
                            ),
                            Text(
                              Intl()
                                  .date('EEE dd MMM, HH:mm')
                                  .format(transactions[index].dateTime),
                              style: TextStyle(
                                color: Style.greyColor,
                                fontSize: 10.7,
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Text(
                              transactions[index].from.currencyCode.toString(),
                              style: TextStyle(
                                color: Style.blackColor,
                                fontSize: 9.3,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 2.7,
                          ),
                          Text(
                            transactions[index].amount.toString(),
                            style: TextStyle(
                              color: Style.blackColor,
                              fontSize: 15.3,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 12.7),
                  color: Color(0xff979797),
                  height: 0.3,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
