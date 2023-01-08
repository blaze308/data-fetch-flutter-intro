import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  const MyRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          width: 100,
          height: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.red),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          width: 100,
          height: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.amber),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          width: 100,
          height: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.green),
        ),
      ],
    );
  }
}
