import 'package:CredUI/data_configuration.dart';
import 'package:CredUI/widgets/piechart.dart';
import 'package:flutter/material.dart';

class PieChartSection extends StatelessWidget {
  const PieChartSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
            left: 20,
            top: 20,
          ),
          child: Text(
            'Expenses',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 40,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: expenses
                      .map(
                        (value) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor:
                                    pieColors[expenses.indexOf(value)],
                                maxRadius: 6,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                value['name'],
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: PieChart(),
            ),
          ],
        ),
      ],
    );
  }
}
