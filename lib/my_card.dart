import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
    required this.myText,
    required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/sax.jpg",
              width: 100, height: 100, fit: BoxFit.contain),
          const SizedBox(height: 20),
          Text(myText,
              style:
                  const TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                  hintText: "Enter Some Text",
                  labelText: "Name",
                  border: OutlineInputBorder()),
            ),
          )
        ],
      ),
    ));
  }
}
