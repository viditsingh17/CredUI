import 'package:CredUI/data_configuration.dart';
import 'package:CredUI/widgets/cards_section.dart';
import 'package:CredUI/widgets/header.dart';
import 'package:CredUI/widgets/piechart_section.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        fontFamily: 'Circular',
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              child: WalletHeader(),
            ),
            Expanded(
              child: CardSection(),
            ),
            Expanded(
              child: PieChartSection(),
            )
          ],
        ),
      ),
    );
  }
}
