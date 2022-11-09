import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final Widget child;
  const CardContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        width: double.infinity,
        //height: 300,
        //color: Colors.red,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 8, 8, 8),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 15,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: this.child,
      ),
    );
  }
}
