import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 100,
      height: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(50),
          gradient: const LinearGradient(colors: [Colors.red, Colors.amber]),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
            )
          ]),
      child: const Text(
        "Hello World!",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          color: Color(0xffffffff),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
