import 'package:ap_common/resources/ap_theme.dart';
import 'package:ap_common/utils/ap_utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nkust_ap/utils/global.dart';

class BusRulePage extends StatefulWidget {
  static const String routerName = "/bus/rule";

  BusRulePage();

  @override
  BusRulePageState createState() => new BusRulePageState();
}

class BusRulePageState extends State<BusRulePage> {
  AppLocalizations app;

  @override
  void initState() {
    FirebaseAnalyticsUtils.instance
        .setCurrentScreen("BusRulePage", "bus_rule_page.dart");
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    app = AppLocalizations.of(context);
    //TODO English version
    return new Scaffold(
      appBar: AppBar(
        title: Text(app.busRule),
        backgroundColor: ApTheme.of(context).blue,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: SelectableText.rich(
          TextSpan(
              style: TextStyle(
                  color: ApTheme.of(context).grey, height: 1.3, fontSize: 16.0),
              children: [
                TextSpan(
                  text: app.reservationRuleTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
                TextSpan(
                  text: app.travelBy,
                ),
                TextSpan(
                    text: "http://bus.kuas.edu.tw/",
                    style: TextStyle(
                      color: ApTheme.of(context).blueAccent,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap =
                          () => ApUtils.launchUrl('http://bus.kuas.edu.tw/')),
                TextSpan(
                  text: app.fourteenDay
                ),
                TextSpan(
                  text: app.reservationTime,
                  style: TextStyle(color: ApTheme.of(context).red),
                ),
                TextSpan(
                  text: app.cancellingTitle,
                ),
                TextSpan(
                  text: app.cancelingTime,
                  style: TextStyle(color: ApTheme.of(context).red),
                ),
                TextSpan(
                  text: app.busRuleFollow,
                ),
                TextSpan(
                  text: app.takeOn,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
                TextSpan(
                  text: app.twentyDollars,
                ),
                TextSpan(
                  text: app.prepareCoins,
                  style: TextStyle(color: ApTheme.of(context).blueText),
                ),
                TextSpan(
                  text: app.idCard,
                ),
                TextSpan(
                  text: app.noIdCard,
                  style: TextStyle(
                      color: ApTheme.of(context).red,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: app.followingTime,
                  style: TextStyle(color: ApTheme.of(context).red),
                ),
                TextSpan(
                  text: app.lateAndNoReservation,
                ),
                TextSpan(
                  text: app.standbyTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
                TextSpan(
                  text: app.standbyRule,
                ),
                TextSpan(
                  text: app.fineTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
                TextSpan(
                  text: app.fineRule,
                  style: TextStyle(color: ApTheme.of(context).red),
                ),
              ]),
        ),
      ),
    );
  }
}
