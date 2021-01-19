import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/material.dart';

class CovidInfoItem extends StatelessWidget {
  final String title;
  final String info;

  const CovidInfoItem({
    Key key,
    this.title,
    this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ExpansionCard(
        leading: Icon(Icons.info_outline, color: Colors.black),
        title: Container(
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        children: [
          Divider(
            indent: 16.0,
            endIndent: 16.0,
            height: 16.0,
            color: Colors.blue,
            thickness: 3.0,
          ),
          Container(
            padding: const EdgeInsets.only(left: 24.0),
            child: Text(
              info,
            ),
          ),
        ],
      ),
    );
  }
}