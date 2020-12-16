import 'package:CredUI/data_configuration.dart';
import 'package:CredUI/widgets/card_details.dart';
import 'package:flutter/material.dart';

class CardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          alignment: Alignment.topLeft,
          child: Text(
            'Selected Card',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, i) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 40,
                ),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: primaryColor,
                  boxShadow: customShadow,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      top: 150,
                      bottom: -200,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: customShadow,
                          shape: BoxShape.circle,
                          color: Colors.white38,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      left: -300,
                      top: -100,
                      bottom: -100,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: customShadow,
                          shape: BoxShape.circle,
                          color: Colors.white38,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      right: -250,
                      top: -100,
                      bottom: 55,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(
                            color: Colors.white30,
                            width: 3,
                          ),
                        ),
                      ),
                    ),
                    //TODO: Implement card details
                    CardDetails(),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
