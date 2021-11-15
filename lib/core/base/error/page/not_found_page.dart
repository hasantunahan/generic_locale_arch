import 'package:flutter/material.dart';

class NotFoundNavigationWidget extends StatelessWidget {
  final String? name;
  const NotFoundNavigationWidget({Key? key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("$name not fount page"),
      ),
    );
  }
}
