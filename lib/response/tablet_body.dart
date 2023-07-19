import 'package:flutter/material.dart';

class MyTabletBody extends StatelessWidget {
  const MyTabletBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        title: const Text("T A B L E T"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AspectRatio(
              aspectRatio: 17 / 9,
              child: Container(
                color: Colors.red[400],
                height: 300,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 120,
                    color: Colors.red[400],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
