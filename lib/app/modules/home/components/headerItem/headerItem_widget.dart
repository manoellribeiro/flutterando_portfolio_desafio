import 'package:flutter/material.dart';

class HeaderItemWidget extends StatelessWidget {

  final String title;

  const HeaderItemWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                title,
                style: Theme.of(context).textTheme.subhead,
                ),
            ),
    );
  }
}
